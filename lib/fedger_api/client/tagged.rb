module FedgerAPI
  class Client
    module Tagged
      #Returns companies associated with tags.
      def tagged_companies(query)
        tagged_provider(query, '/company')
      end

      #Returns fundings associated with tags.
      def tagged_fundings(query)
        tagged_provider(query, '/funding')
      end

      private

      def tagged_provider(query, uri)
        Response.new(request(query, uri))
      end

      def request(query, uri)
        self.class.get("/tagged#{uri}", merge_options(query))
      end
    end
  end
end
