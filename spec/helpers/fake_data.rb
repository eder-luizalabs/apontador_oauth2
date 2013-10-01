module FakeData
  def fake_token_without_authentication
      stub_request(:post, "https://api.apontador.com.br/v2/oauth/token").with(:body => {"client_secret"=>"54321", "username"=>"", "grant_type"=>"client_credentials", "password"=>"", "client_id"=>"12345", "url"=>"https://api.apontador.com.br/v2/"},
              :headers => {'Accept'=>'*/*', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'Faraday v0.8.8'}).to_return(:status => 200, :body => '{"access_token":"token-12345678910","token_type":"bearer","scope":"read trust write"}', :headers => {}) 


  


  end

  def fake_token_with_authentication
      stub_request(:post, "https://api.apontador.com.br/v2/oauth/token").with(:body => {"client_secret"=>"54321", "username"=>"jhondoe@example.com", "grant_type"=>"password", "password"=>"123456", "client_id"=>"12345", "url"=>"https://api.apontador.com.br/v2/"},
              :headers => {'Accept'=>'*/*', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'Faraday v0.8.8'}).to_return(:status => 200, :body => '{"access_token":"token-authenticate-12345678910","token_type":"bearer","scope":"read trust write"}', :headers => {})  
    
  end

  def fake_info_user
    stub_request(:get, "https://api.apontador.com.br/v2/users/me").with(:headers => {'Accept'=>'application/json', 
                                                                        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 
                                                                        'Authorization'=>'Bearer token-authenticate-12345678910', 
                                                                        'Content-Type'=>'application/json', 'User-Agent'=>'Faraday v0.8.8'
    }).to_return(:status => 200, :body => File.read("spec/fixtures/factories/user.json"), :headers => {})
  end

  def fake_register_user
    stub_request(:get, "https://api.apontador.com.br/v2/users").with(:body => "{\"user\":{\"name\":\"jhon Doe\",\"email\":\"jhondoe@example.com\",\"password\":\"jhondoe12345\"}}",
              :headers => {'Accept'=>'application/json', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Authorization'=>'Bearer token-12345678910', 'Content-Type'=>'application/json', 'User-Agent'=>'Faraday v0.8.8'}).to_return(:status => 201, :body => "", :headers => {})
  end
end
