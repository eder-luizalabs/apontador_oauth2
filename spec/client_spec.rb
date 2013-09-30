require 'spec_helper'

describe "With Client id  and Client Srecret valids" do
  context "Without email and password of user" do
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
  
  context "With email and password valids" do
    before do
      fake_token_with_authentication
      credentials = { :client_id     => "12345",
                      :client_secret => "54321",
                      :url           => "https://api.apontador.com.br/v2/authenticator",
                      :username      => "jhondoe@example.com",
                      :password      => "123456",
                      :grant_type    => "password",
                    }
     @client = ApontadorOauth2::Client.new(credentials)                 
    end
    
    it "should return one token valid" do
      @client.token.should be === "token-authenticate-12345678910"
    end

    #it  "Grab informations of User" do
      #@client.user_information['user'].should_not be_nil
    #end
  end
end
