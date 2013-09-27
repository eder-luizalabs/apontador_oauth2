require 'spec_helper'
describe  do
  context "With Client id  and Client Srecret valids"do
    before do
         conf = {:client_id => "12345", :client_secret => "54321",
                 :url       => "https://api.apontador.com.br/v2/"
                }
      @client = ApontadorOauth2::Client.new(conf)

    end
    it "should return one token valid" do
      @client.token.should be === "token-12345678910"
    end
    
    it  "Grap informations of User" do
      @client.user_information['user']
    end
  end
end
