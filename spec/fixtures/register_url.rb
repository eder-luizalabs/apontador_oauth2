#FakeWeb.register_uri(:post, "https://api.apontador.com.br/v2/oauth/token",
                     #:body =>'{"access_token":"token-12345678910","token_type":"bearer","scope":"read trust write"}',
                     #:heades =>    {:client_id =>'123456',
                                     #:client_secret =>'54321',
                                     #:grant_type => 'client_credentials',
                                     #:username => nil,
                                     #:password => nil
                      #})

#FakeWeb.register_uri(:get, "https://api.apontador.com.br/v2/users/me",
                     #:body =>  File.read("spec/fixtures/factories/fakeweb/user.json"))
