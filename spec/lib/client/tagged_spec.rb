require 'spec_helper'
require_relative '../../../lib/fedger_api/client'


describe FedgerAPI::Client, vcr: true do
  fedger_api_config = YAML::load_file(File.join(__dir__, '../../../fedger_api.yml'))

  let(:client) { FedgerAPI::Client.new(fedger_api_config['api_key']) }

  context FedgerAPI::Client::Tagged do
    context '#tagged_companies' do
      subject(:request) { client.tagged_companies({tags: fedger_api_config['discovery_query'], isJoin: 'true'}) }

      it { should be_an FedgerAPI::Response }
      it { should respond_to(:companies) }

      context '#to_h' do
        subject { request.to_h }

        it { should be_an Hash }
        it { should include('companies') }
      end

      context '#to_a' do
        subject { request.to_a }

        it { should be_an Array }
      end
    end
  end

  context FedgerAPI::Client::Tagged do
    context '#tagged_fundings' do
      subject(:request) { client.tagged_fundings({tags: fedger_api_config['discovery_query'], range_from: 1, range_to: 20, isJoin: true}) }

      it { should be_an FedgerAPI::Response }
      it { should respond_to(:fundings) }

      context '#to_h' do
        subject { request.to_h }

        it { should be_an Hash }
        it { should include('fundings') }
      end

      context '#to_a' do
        subject { request.to_a }

        it { should be_an Array }
      end
    end
  end

end
