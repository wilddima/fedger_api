module FedgerAPI
  class Client
    module News
      #Returns a collection of the most recent fundings covered.
      def latest_fundings
        news_provider('/fundings')
      end

      private

      def news_provider(uri)
        Response.new(news_request(uri))
      end

      def news_request(uri)
        self.class.get("/news#{uri}", merge_options)
      end
    end
  end
end
