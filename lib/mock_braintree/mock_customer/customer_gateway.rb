module MockCustomer
  class CustomerGateway
    def create(hash={})
      if hash[:first_name] == "FAIL"
        MockCustomer::UnsuccessfulResult.new
      else
        MockCustomer::SuccessfulResult.new(hash)
      end
    end
    def find(customer_id, options = {})
      if customer_id == 0
        MockCustomer::UnsuccessfulResult.new
      else
        @customer = MockCustomer::NewCustomer.new({id: customer_id})
      end
    end
  end
end
