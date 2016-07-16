require 'spec_helper'
require_relative '../../../lib/fedger_api/client'


describe FedgerAPI::Client, vcr: true do
  fedger_api_config = YAML::load_file(File.join(__dir__, '../../../fedger_api.yml'))

  let(:client) { FedgerAPI::Client.new(fedger_api_config['api_key']) }

  context FedgerAPI::Client::Stats do
    context '#latest_fundings' do
      subject { client.stats_fundings(fedger_api_config['year'], {month: 1, country: fedger_api_config['iso_country']}) }

      it { should be_an Hash }
      it { should include('year', 'currency', 'type') }
    end
  end

end
