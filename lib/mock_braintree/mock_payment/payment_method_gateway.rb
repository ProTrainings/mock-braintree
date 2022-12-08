module MockPayment
  class PaymentMethodGateway
    def create(hash={})
      if hash[:payment_method_nonce] == "FAIL"
        MockPayment::UnsuccessfulResult.new
      else
        MockPayment::SuccessfulResult.new(hash)
      end
    end
    def delete(token)
      if token == "FAIL"
        MockPayment::UnsuccessfulResult.new
      else
        MockPayment::SuccessfulResult.new
      end
    end
  end
end