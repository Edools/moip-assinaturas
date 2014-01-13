require 'rspec'
require 'fakeweb'
require 'pry'
require 'moip-assinaturas'

FakeWeb.allow_net_connect = false

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
  
  config.before(:suite) do
    Moip::Assinaturas.config do |config|
      config.token = "TOKEN"
      config.key   = "KEY"
    end

    $custom_moip_auth = {
      token: "TOKEN2",
      key: "KEY2",
      sandbox: false
    }
  end
end