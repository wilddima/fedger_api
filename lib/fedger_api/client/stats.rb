module FedgerAPI
  class Client
    module Stats
      #TODO
      def stats_fundings(year, query)
        stats_provider(year, query, '/fundings')
      end

      private

      def stats_provider(year, query, uri)
        Response.new(stats_request(year, query, uri))
      end

      def stats_request(year, query, uri)
        self.class.get("/stats#{uri}/#{year}", merge_options(query))
      end
    end
  end
end
