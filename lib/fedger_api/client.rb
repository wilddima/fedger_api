require 'httparty'
require_relative 'client/company.rb'
require_relative 'client/discover.rb'
require_relative 'client/geo.rb'
require_relative 'client/news.rb'

module FedgerAPI
  # Class provide connection to fedger.io api
  class Client
    include HTTParty
    include FedgerAPI::Client::Company
    include FedgerAPI::Client::Discover
    include FedgerAPI::Client::Geo
    include FedgerAPI::Client::News

    base_uri 'https://api.fedger.io/v1'
    format :json

    def initialize(api_key = nil)
      @api_key ||= api_key || ENV['FEDGER_API_KEY']
      @options = { query: { apikey: @api_key }, verify: false }
    end
  end
end
