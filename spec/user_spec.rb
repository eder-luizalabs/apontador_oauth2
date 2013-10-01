require "spec_helper"
describe "Interation with data of user" do
  context "User information" do
    before do
      fake_token_with_authentication
      user_logged
    end  
    it "Grab User " do
      fake_info_user
      user = ApontadorOauth2::User.new({:token => user_logged.token})
      user.user_information['user'].should_not be_nil
    end
  end
  context "Register user" do
    before do
      fake_token_without_authentication
       fake_register_user
    end
    it "create new user" do
      conf = {:name     => "jhon Doe", 
              :email    => "jhondoe@example.com",
              :password => "jhondoe12345"
             }

      new_user = ApontadorOauth2::User.new({:token => logged_with_credentials.token})
      new_user.register_user_in_apontador(conf).should be_nil
    end
  end
end
