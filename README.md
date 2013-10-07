[![Build Status](https://travis-ci.org/eder/apontador_oauth2.png?branch=master)](https://travis-ci.org/eder/apontador_oauth2)
# ApontadorOauth2
Ruby client for the OAuth 2.0 to site Apontador, still in process of development. 
## Installation

Add this line to your application's Gemfile:

    gem 'apontador_oauth2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install apontador_oauth2

## Usage Examples
 
Get Token with app trust:

 credentials = {:client_id     => "12345",
                     :client_secret => "54321",
                     :url           => "https://api.apontador.com.br/v2/"
                    }
  client =  ApontadorOauth2::Client.new(credentials)

  client.token
 #=> token-valid
##Supported Ruby Versions

This library aims to support and is tested against the following Ruby implementations:
Ruby 1.9.2
Ruby 1.9.3
Ruby 2.0.0

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
