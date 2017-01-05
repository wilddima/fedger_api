module FedgerAPI
  class Client
    # Tagged
    module Tagged
      # Returns companies associated with tags.
      def tagged_companies(query)
        tagged_provider(query, '/company')
      end

      # Returns fundings associated with tags.
      def tagged_fundings(query)
        tagged_provider(query, '/funding')
      end

      private

      def tagged_provider(query, uri)
        Response.new(tagged_request(query, uri))
      end

      def tagged_request(query, uri)
        self.class.get("/tagged#{uri}", merge_options(query))
      end
    end
  end
end
