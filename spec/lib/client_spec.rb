require 'spec_helper'
require_relative '../../lib/fedger_api/client'


describe FedgerAPI::Client, vcr: true do
  fedger_api_config = YAML::load_file(File.join(__dir__, '../../fedger_api.yml'))

  let(:client) { FedgerAPI::Client.new(fedger_api_config['api_key']) }

  context FedgerAPI::Client::Company do
    context '#funding_details' do
      subject { client.funding_details(fedger_api_config['test_company']) }

      it { should be_an Hash }
      it { should include('name', 'domain', 'amount_total', 'rounds') }
    end

    context '#funding_status' do
      subject { client.funding_status(fedger_api_config['test_company']) }

      it { should be_an Hash }
      it { should include('name', 'domain', 'amount_total') }
    end

    context '#fundings' do
      subject { client.fundings(fedger_api_config['test_company']) }

      it { should be_an Hash }
      # it { should include() }
    end

    context '#company_insights' do
      subject { client.company_insights(fedger_api_config['test_company']) }

      it { should be_an Hash }
      it { should include('cursor', 'nodes') }
    end

    context '#investors' do
      subject { client.investors(fedger_api_config['test_company']) }

      it { should be_an Hash }
      it { should include('name', 'domain', 'investors') }
    end

    context '#locations' do
      subject { client.locations(fedger_api_config['test_company']) }

      it { should be_an Hash }
      it { should include('name') }
    end

    context '#peers' do
      subject { client.peers(fedger_api_config['test_company']) }

      it { should be_an Hash }
      it { should include('peers') }
    end

    context '#peers' do
      subject { client.peers(fedger_api_config['test_company']) }

      it { should be_an Hash }
      it { should include('peers') }
    end

    context '#portfolio_companies' do
      subject { client.portfolio_companies(fedger_api_config['test_company']) }

      it { should be_an Hash }
      it { should include('domain', 'name', 'portfolio') }
    end

    context '#snapshot' do
      subject { client.snapshot(fedger_api_config['test_company']) }

      it { should be_an Hash }
      it { should include('fundingLevel', 'dateFounded', 'name', 'slug') }
    end

    context '#team_details' do
      subject { client.team_details(fedger_api_config['test_company']) }

      it { should be_an Hash }
      it { should include('domain', 'name', 'team') }
    end
  end

  context FedgerAPI::Client::Discover do
    context '#discovery' do
      subject { client.discovery(fedger_api_config['discovery_query']) }

      it { should be_an Hash }
      it { should include('data') }
    end

    context '#discovery_companies' do
      subject { client.discovery_companies(fedger_api_config['discovery_query']) }

      it { should be_an Hash }
      it { should include('cursor', 'data') }
    end

    context '#discovery_vertices' do
      subject { client.discovery_vertices(fedger_api_config['discovery_query']) }

      it { should be_an Hash }
      it { should include('cursor', 'total_count', 'data') }
    end
  end
end
