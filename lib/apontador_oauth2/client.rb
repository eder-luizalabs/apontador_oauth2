# -*- encoding: utf-8 -*-
require 'net/http'
require 'net/https'
require 'faraday'
require 'json'
module  ApontadorOauth2 
  class Client
    attr_accessor :token, :options
    def initialize(options)
      @options = {:grant_type => "client_credentials",
                  :username   => "",
                  :password   => "",
      }.merge!(options)
      request
    end
    
    private
    def request
      connection  = Faraday.new(:url => URI.parse(@options[:url]))
      response = connection.post 'oauth/token', @options
      @token = JSON.parse(response.body)['access_token']
    end
  end
end
