require 'spec_helper'
describe "With Client id and Client Srecret valids" do
  context "Token" do
    before do
      fake_token_without_authentication
    end
    
   it "should return one token valid" do
      logged_with_credentials.token.should be === "token-12345678910"
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
