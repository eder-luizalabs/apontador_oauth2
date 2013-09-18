require 'spec_helper'
describe  do
  context "With Client id  and Client Srecret valids"do
    it "should return one token valid" do
      conf = {:client_id     => "12345", 
              :client_secret => "54321",
              :url           => "https://api.apontador.com.br/v2/"
             }
      @client = ApontadorOAuth2::Client.new(conf)
      @client.get_token.should be === "token-12345678910"
    end
  end
end
