# -*- encoding: utf-8 -*-
require 'net/http'
require 'net/https'
require 'faraday'
require 'json'
module  ApontadorOauth2
  class Client
    class << self
      attr_accessor :options, :token
    end
    
    def initialize(options, &block)
       options_for_oauth = {
        :url             => options[:url],
        :client_id       => options[:client_id] ,
        :client_secret   => options[:client_secret],
        :grant_type      => "client_credentials",
        :username        => "",
        :password        => "",
      }.merge!(options) 
      Client.options = options_for_oauth
      Client.request
    end

    def self.request
      url = URI.parse(Client.options[:url])
      connection  = Faraday.new(:url => url)
      response = connection.post 'oauth/token',  Client.credentials
      Client.token = JSON.parse(response.body)['access_token']
    end
    
    def self.credentials
      { 'client_id'     => Client.options[:client_id],
        'client_secret' => Client.options[:client_secret],
        'grant_type'    => Client.options[:grant_type]
      }
    end
    
    def get_token
      Client.token
    end
  end
end
