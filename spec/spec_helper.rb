require 'simplecov'
SimpleCov.start
require 'webmock/rspec'
require 'helpers/fake_data'
require 'helpers/login'
require 'rubygems'
require 'bundler/setup'
require 'apontador_oauth2' # and any other gems you need
RSpec.configure do |config|
  config.include FakeData
  config.include Login
end

