# -*- encoding: utf-8 -*-
require 'net/http'
require 'net/https'
require 'faraday'
require 'json'
module  ApontadorOauth2 
  class Client
    attr_accessor :token, :options
    def initialize(options)
      @options = {
        :grant_type      => "client_credentials",
        :username        => "",
        :password        => "",
      }.merge!(options)
      request
    end
    
    def request
      url = URI.parse(@options[:url])
      connection  = Faraday.new(:url => url)
      response = connection.post 'oauth/token', credentials
      @token = JSON.parse(response.body)['access_token']
    end
    
    def credentials
      { 'client_id'     => @options[:client_id],
        'client_secret' => @options[:client_secret],
        'grant_type'    => @options[:grant_type],
        'username'      => @options[:username],
        'password'      => @options[:password]
      }
    end
    
    def user_information
      ApontadorOauth2::User.new.get_information(self)
    end
  end
end
