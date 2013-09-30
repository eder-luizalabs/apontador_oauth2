require 'spec_helper'
describe "With Client id  and Client Srecret valids" do
  context "Token" do
    before do
      fake_token_without_authentication
      credentials = {:client_id     => "12345",
                     :client_secret => "54321",
                     :url           => "https://api.apontador.com.br/v2/"
                    }
      @client = ApontadorOauth2::Client.new(credentials)
    end
    
   it "should return one token valid" do
      @client.token.should be === "token-12345678910"
    end
  end
  
  context "Token with email and password valids" do
    before do
      fake_token_with_authentication
      user_logged
    end
    it "should return one token valid" do
       user_logged.token.should be === "token-authenticate-12345678910"
    end
  end
end
