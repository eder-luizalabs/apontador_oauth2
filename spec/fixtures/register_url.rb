FakeWeb.register_uri(:post, "https://api.apontador.com.br/v2/oauth/token",
                     :body =>'{"access_token":"token-12345678910","token_type":"bearer","scope":"read trust write"}',
                     :parameters => {:client_id =>'12345',
                                     :client_secret =>'54321',
                                     :grant_type => 'client_credentials',
                                     :username => nil,
                                     :password => nil})
