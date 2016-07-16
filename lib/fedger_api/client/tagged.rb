module FedgerAPI
  class Client
    module Tagged
      #
      def tagged_companies(query)
        tagged_provider(query, '/company')
      end

      #
      def tagged_fundings(query)
        tagged_provider(query, '/funding')
      end

      private

      def tagged_provider(query, uri)
        @options[:query].merge!(query)
        self.class.get("/tagged#{uri}", @options).to_h
      end
    end
  end
end
