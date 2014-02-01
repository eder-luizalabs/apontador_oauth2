module  ApontadorOauth2
  attr_accessor :options
  class User
    def initialize(options={})
      @options = options
    end
    
    def user_information
      response = request({:path => "/v2/users/me"}.merge!(@options))
       Request.json(response.body)
    end

    def register_user_in_apontador(options)
      res = request( {:path => "users", :user => options}.merge(@options))
      Request.json(res.body) if res.status != 201
    end
    
    def request(options)
      Request.send(options)
    end
  end
end
