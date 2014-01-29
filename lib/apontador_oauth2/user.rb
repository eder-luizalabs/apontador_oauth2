module  ApontadorOauth2
  attr_accessor :options
  class User
    def initialize(options={})
      @options = options
    end
    
    def user_information
      response = request({:path => "users/me"}.merge!(@options))
      json(response.body)
    end

    def register_user_in_apontador(options)
      res = request( {:path => "users", :user => options}.merge(@options))
      json(res.body) if res.status != 201
    end
    
    def request(options)
      Request.send(options)
    end
    private
    def json(data)
     JSON.parse(data)
    end
  end
end
