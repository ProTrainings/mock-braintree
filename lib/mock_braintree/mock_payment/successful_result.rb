module MockPayment
  class SuccessfulResult
    attr_reader :payment_method

    def initialize(hash = {})
      @payment_method = MockPayment::NewPayment.new(hash)
    end

    def success?
      true
    end
  end
end