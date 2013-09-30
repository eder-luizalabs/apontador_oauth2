module  ApontadorOauth2
  attr_accessor :options
  class User
    def initialize(options={})
      @options = options.merge!({:url => "https://api.apontador.com.br/v2/"})
    end
    
    def user_information
      response = request({:path => "users/me"}.merge!(@options))
      json(response.body)
    end

    def register_user_in_apontador(options)
      data = {:path => "users/"}.merge(options).merge(@options)
      response = request(data)
      json(response.body) unless response.status == 201
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
