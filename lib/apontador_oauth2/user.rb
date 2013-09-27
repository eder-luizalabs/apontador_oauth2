module  ApontadorOauth2
  class User
    def get_information(data)
      options = {:path => "users/me", :token => data.token}.merge!(data.options)
      request(options)
    end
    
    def request(options)
      Request.send(options)
    end
  end
end
