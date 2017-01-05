module FedgerAPI
  class Response
    attr_reader :response

    def initialize(response)
      @response = response
      create_keys!
    end

    def to_h
      response.to_h
    end

    def to_a
      response.map { |k, v| [k, v] }
    end

    private

    def create_keys!
      response.each do |key, val|
        instance_variable_set("@#{key}", val)
        define_singleton_method(key) { val }
      end
    end
  end
end