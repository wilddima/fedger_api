require 'spec_helper'
require_relative '../../../lib/fedger_api/client'


describe FedgerAPI::Client, vcr: true do
  fedger_api_config = YAML::load_file(File.join(__dir__, '../../../fedger_api.yml'))

  let(:client) { FedgerAPI::Client.new(fedger_api_config['api_key']) }

  context FedgerAPI::Client::Geo do
    context '#geo_located_companies' do
      subject { client.geo_located_companies(fedger_api_config['iso_country']) }

      it { should be_an FedgerAPI::Response }
      it { should respond_to(:companies) }
    end

    context '#geo_located_fundings' do
      subject { client.geo_located_fundings(fedger_api_config['iso_country']) }

      it { should be_an FedgerAPI::Response }
      it { should respond_to(:fundings) }
    end
  end
end
