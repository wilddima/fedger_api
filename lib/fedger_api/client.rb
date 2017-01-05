module FedgerAPI
  # Class provide connection to fedger.io api
  class Client
    require 'httparty'
    require_relative 'response'
    require_relative 'client/company'
    require_relative 'client/discover'
    require_relative 'client/geo'
    require_relative 'client/news'
    require_relative 'client/stats'
    require_relative 'client/tagged'

    include HTTParty
    include FedgerAPI::Client::Company
    include FedgerAPI::Client::Discover
    include FedgerAPI::Client::Geo
    include FedgerAPI::Client::News
    include FedgerAPI::Client::Stats
    include FedgerAPI::Client::Tagged

    attr_reader :options, :api_key

    base_uri 'https://api.fedger.io/v1'
    format :json

    def initialize(api_key = nil)
      @api_key ||= api_key || ENV['FEDGER_API_KEY']
      @options = { query: { apikey: @api_key }, verify: false }
    end

    protected

    def response
      @response ||= Response
    end

    def create_response(http_response)
      response.new(http_response)
    end

    def merge_options(query = nil)
      return options unless query
      options.merge(query: options[:query].merge(query))
    end
  end
end
