module MockPayment
  class PaymentMethodGateway
    def create(hash={})
      if hash[:payment_method_nonce] == "FAIL"
        MockPayment::UnsuccessfulResult.new
      else
        MockPayment::SuccessfulResult.new(hash)
      end
    end
  end
end