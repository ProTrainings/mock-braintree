require "mock_braintree/version"
require "mock_braintree/transaction_request"
require "mock_braintree/transaction"
require "mock_braintree/successful_result"
require "mock_braintree/unsuccessful_result"
require "mock_braintree/client_token_gateway"
require "mock_braintree/mock_customer/customer_gateway"
require "mock_braintree/mock_customer/successful_result"
require "mock_braintree/mock_customer/unsuccessful_result"
require "mock_braintree/mock_customer/new_customer"
require "mock_braintree/mock_payment/new_payment"
require "mock_braintree/mock_payment/payment_method_gateway"
require "mock_braintree/mock_payment/unsuccessful_result"
require "mock_braintree/mock_payment/successful_result"

module MockBraintree
  class Gateway
    def transaction
      TransactionRequest.new
    end
    def client_token
      ClientTokenGateway.new
    end
    def customer
      MockCustomer::CustomerGateway.new
    end
    def payment_method
      MockPayment::PaymentMethodGateway.new
    end
  end
end



