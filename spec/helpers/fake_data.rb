module FakeData
  def fake_token_without_authentication
    stub_request(:post, "https://api.apontador.com.br/v2/oauth/token").
      with(:body => {"client_id"=>"12345", "client_secret"=>"54321", "grant_type"=>"client_credentials", "password"=>"", "url"=>"https://api.apontador.com.br/v2/", "username"=>""},
              :headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'Faraday v0.8.8'}).
      to_return(:status => 200, :body => '{"access_token":"token-12345678910","token_type":"bearer","scope":"read trust write"}', :headers => {}) 
  end

  def fake_token_with_authentication
    stub_request(:post, "https://api.apontador.com.br/v2/authenticator/oauth/token").
         with(:body => {"client_id"=>"12345", "client_secret"=>"54321", "grant_type"=>"password", "password"=>"123456", "url"=>"https://api.apontador.com.br/v2/authenticator", "username"=>"jhondoe@example.com"},
              :headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'Faraday v0.8.8'}).
      to_return(:status => 200, :body => '{"access_token":"token-authenticate-12345678910","token_type":"bearer","scope":"read trust write"}', :headers => {})  
  end
end
