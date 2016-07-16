module FedgerAPI
  class Client
    module Company
      #Returns a detailed funding history collection.
      def funding_details(company_domain)
        company_provider(company_domain, 'funding/details')
      end

      #Returns Total funding amount and current stage.
      def funding_status(company_domain)
        company_provider(company_domain, 'funding/status')
      end

      #Returns a detailed funding history collection.
      def fundings(company_domain)
        company_provider(company_domain, 'fundings')
      end

      #Returns nodes connected to a company.
      def company_insights(company_domain)
        company_provider(company_domain, 'insights')
      end

      #Returns a list of investors in a company.
      def investors(company_domain)
        company_provider(company_domain, 'investors')
      end

      #Returns a list with city/country for operative sites of a company.
      def locations(company_domain)
        company_provider(company_domain, 'locations')
      end

      #Returns company peers.
      def peers(company_domain)
        company_provider(company_domain, 'peers')
      end

      #List of company names, an investor has invested in.
      def portfolio_companies(company_domain)
        company_provider(company_domain, 'portfolio')
      end

      #Returns details of a company profile.
      def company_snapshot(company_domain)
        company_provider(company_domain, 'snapshot')
      end

      #Returns team profiles for a company.
      def team_details(company_domain)
        company_provider(company_domain, 'team/details')
      end

      private

      def company_provider(company_domain,uri)
        self.class.get("/company/#{company_domain}/#{uri}", @options).to_h
      end
    end
  end
end
