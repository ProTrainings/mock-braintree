module MockCustomer
  class SuccessfulResult
    attr_reader :customer

    def initialize(hash = {})
      @customer = MockCustomer::NewCustomer.new(hash)
    end

    def success?
      true
    end
  end
end