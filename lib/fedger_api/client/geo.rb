module FedgerAPI
  class Client
    module Geo
      #
      def geo_located_companies(country_code)
        geo_provider(country_code, '/company')
      end

      #
      def geo_located_fundings(country_code)
        geo_provider(country_code, '/funding')
      end

      private

      def geo_provider(country_code, uri)
        self.class.get("/geo/#{country_code}#{uri}", @options).to_h
      end
    end
  end
end
