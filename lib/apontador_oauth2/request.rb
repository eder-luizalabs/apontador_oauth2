module ApontadorOauth2
  class Request
    def self.send(options)
      conn = Faraday.new(:url => options[:url])
      res = conn.get do |req|
        req.url(options[:path])
        req.headers['Content-Type']  =  "application/json"
        req.headers['Authorization'] =  "Bearer #{options[:token]}"
        req.headers['Accept']        =  "application/json"
        req.body = {:user => options[:user]}.to_json if options[:user]
      end
     res
    end
    
    def self.json(data)
     JSON.parse(data)
    end
  end
end
