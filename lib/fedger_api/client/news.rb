module FedgerAPI
  class Client
    module News
      #
      def latest_fundings
        news_provider('/fundings')
      end

      private

      def news_provider(uri)
        self.class.get("/news#{uri}", @options).to_h
      end
    end
  end
end
