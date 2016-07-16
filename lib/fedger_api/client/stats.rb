module FedgerAPI
  class Client
    module Stats
      #
      def stats_fundings(year, query)
        stats_provider(year, query, '/fundings')
      end

      private

      def stats_provider(year, query, uri)
        @options[:query].merge(query)
        self.class.get("/stats#{uri}/#{year}", @options).to_h
      end
    end
  end
end
