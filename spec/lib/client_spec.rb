require 'spec_helper'
require_relative '../../lib/fedger_api/client'


describe FedgerAPI::Client, vcr: true do
  fedger_api_config = YAML::load_file(File.join(__dir__, '../../fedger_api.yml'))

  let(:client) { FedgerAPI::Client.new(fedger_api_config['api_key']) }
end
