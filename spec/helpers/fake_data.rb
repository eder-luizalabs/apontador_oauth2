module FakeData
  def fake_token_without_authentication
    stub_request(:post, "https://api.apontador.com.br/v2/oauth/token").with(:body => {"client_secret"=>"54321", "username"=>"", "grant_type"=>"client_credentials", "password"=>"", "client_id"=>"12345", "url"=>"https://api.apontador.com.br/v2/"},
              :headers => {'Accept'=>'*/*', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'Faraday v0.8.8'}).to_return(:status => 200, :body => '{"access_token":"token-12345678910","token_type":"bearer","scope":"read trust write"}', :headers => {}) 


  


  end

  def fake_token_with_authentication
    stub_request(:post, "https://api.apontador.com.br/v2/authenticator/oauth/token").  with(:body => {"client_secret"=>"54321", "username"=>"jhondoe@example.com", "grant_type"=>"password", "password"=>"123456", "client_id"=>"12345", "url"=>"https://api.apontador.com.br/v2/authenticator"},
              :headers => {'Accept'=>'*/*', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'Faraday v0.8.8'}).to_return(:status => 200, :body => '{"access_token":"token-authenticate-12345678910","token_type":"bearer","scope":"read trust write"}', :headers => {})  
    
  end
end
