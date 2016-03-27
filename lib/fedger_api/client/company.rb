module FedgerAPI
  class Client
    module Company
      def funding_details(company_domain)
        provider(company_domain, 'funding/details')
      end

      def funding_status(company_domain)
        provider(company_domain, 'funding/status')
      end

      def fundings(company_domain)
        provider(company_domain, 'fundings')
      end

      def company_insights(company_domain)
        provider(company_domain, 'insights')
      end

      def investors(company_domain)
        provider(company_domain, 'investors')
      end

      def locations(company_domain)
        provider(company_domain, 'locations')
      end

      def peers(company_domain)
        provider(company_domain, 'peers')
      end

      def portfolio_companies(company_domain)
        provider(company_domain, 'portfolio')
      end

      def snapshot(company_domain)
        provider(company_domain, 'snapshot')
      end      

      def team_details(company_domain)
        provider(company_domain, 'team/details')
      end      

      private

      def provider(company_domain,uri)
        self.class.get("/company/#{company_domain}/#{uri}", @options).to_h
      end
    end
  end
end
