require 'spec_helper'
describe  do
  context "With Client id  and Client Srecret valids"do
    it "should return one token valid" do
      @client = ApontadorOAuth2::Client.new("12345", "123456", "http://endpoint")
      @client.token should be equal "12345"
    end
  end  
end
