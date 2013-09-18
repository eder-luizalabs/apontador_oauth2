require 'simplecov'
SimpleCov.start
require 'fakeweb'
FakeWeb.allow_net_connect = true
require 'fixtures/register_url'
require 'rubygems'
require 'bundler/setup'
require 'apontador_oauth2' # and any other gems you need

RSpec.configure do |config|
 
end

