require 'securerandom'

module MockPayment
  class NewPayment
    attr_reader :last_4, :card_type, :expiration_date, :token

    def initialize(hash = {})
      @last_4 = "1234"
      @card_type = "Visa"
      @expiration_date = Time.now.utc
      @token = SecureRandom.hex(3)
    end
  end
end