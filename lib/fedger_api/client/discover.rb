module FedgerAPI
  class Client
    module Discover
      # Returns a graph of vertices and edges matching the search query.
      def discovery(query)
        discovery_provider(query, '')
      end

      # Returns detailed corresponding companies matching the search query.
      def discovery_companies(query)
        discovery_provider(query, '/companies')
      end

      # Returns detailed corresponding vertices matching the search query.
      def discovery_vertices(query)
        discovery_provider(query, '/vertices')
      end

      private

      def discovery_provider(query, uri)
        Response.new(discovery_request(query, uri))
      end

      def discovery_request(query, uri)
        self.class.get("/discover#{uri}", merge_options(s: query))
      end
    end
  end
end
