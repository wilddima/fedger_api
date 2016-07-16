require 'spec_helper'
require_relative '../../../lib/fedger_api/client'


describe FedgerAPI::Client, vcr: true do
  fedger_api_config = YAML::load_file(File.join(__dir__, '../../../fedger_api.yml'))

  let(:client) { FedgerAPI::Client.new(fedger_api_config['api_key']) }

  context FedgerAPI::Client::News do
    context '#latest_fundings' do
      subject { client.latest_fundings() }

      it { should be_an Hash }
      it { should include('date_reference', 'fundings') }
    end
  end

end
