module FedgerAPI
  class Client
    module Company
      def funding_details(company_domain)
        self.class.get("/company/#{company_domain}/funding/details", @options)
      end

      def funding_status(company_domain)
        self.class.get("/company/#{company_domain}/funding/status", @options)
      end

      def fundings(company_domain)
        self.class.get("/company/#{company_domain}/fundings", @options)
      end

      def company_insights(company_domain)
        self.class.get("/company/#{company_domain}/insights", @options)
      end

      def investors(company_domain)
        self.class.get("/company/#{company_domain}/investors", @options)
      end

      def locations(company_domain)
        self.class.get("/company/#{company_domain}/locations", @options)
      end

      def peers(company_domain)
        self.class.get("/company/#{company_domain}/peers", @options)
      end

      def portfolio_companies(company_domain)
        self.class.get("/company/#{company_domain}/portfolio", @options)
      end

      def snapshot(company_domain)
        self.class.get("/company/#{company_domain}/snapshot", @options)
      end      

      def team_details(company_domain)
        self.class.get("/company/#{company_domain}/team/details", @options)
      end      
    end
  end
end
