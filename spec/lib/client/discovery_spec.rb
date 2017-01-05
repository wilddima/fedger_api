require 'spec_helper'
require_relative '../../../lib/fedger_api/client'


describe FedgerAPI::Client, vcr: true do
  fedger_api_config = YAML::load_file(File.join(__dir__, '../../../fedger_api.yml'))

  let(:client) { FedgerAPI::Client.new(fedger_api_config['api_key']) }

  context FedgerAPI::Client::Discover do
    context '#discovery' do
      subject { client.discovery(fedger_api_config['discovery_query']) }

      it { should be_an FedgerAPI::Response }
      it { should respond_to(:data) }
    end

    context '#discovery_companies' do
      subject { client.discovery_companies(fedger_api_config['discovery_query']) }

      it { should be_an FedgerAPI::Response }
      it { should respond_to(:cursor, :data) }
    end

    context '#discovery_vertices' do
      subject { client.discovery_vertices(fedger_api_config['discovery_query']) }

      it { should be_an FedgerAPI::Response }
      it { should respond_to(:cursor, :total_count, :data) }
    end
  end
end


