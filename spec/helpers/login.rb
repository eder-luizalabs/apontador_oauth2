module Login
  def user_logged
    credentials = { :client_id   => "12345",
                  :client_secret => "54321",
                  :url           => "https://api.apontador.com.br",
                  :username      => "jhondoe@example.com",
                  :password      => "123456",
                  :grant_type    => "password",
                }
    ApontadorOauth2::Client.new(credentials)
  end
  
  def logged_with_credentials
    credentials = { client_id:      "12345",
                    client_secret:  "54321",
                    url:            "https://api.apontador.com.br"
                    }
    ApontadorOauth2::Client.new(credentials)
  end

end
