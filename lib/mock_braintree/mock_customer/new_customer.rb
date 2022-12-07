require 'securerandom'

module MockCustomer
  class NewCustomer
    attr_reader :first_name, :last_name, :company, :id

    def initialize(hash = {})
      @first_name = hash[:first_name] || "Test"
      @last_name = hash[:last_name] || "Test"
      @company = hash[:company] || "Test"
      @id = hash[:id]
    end

    def id
      @id ||= SecureRandom.random_number(9999999)
    end
  end
end