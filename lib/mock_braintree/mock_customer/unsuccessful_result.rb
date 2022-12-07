module MockCustomer
  class UnsuccessfulResult
    def errors
      "Errors"
    end

    def success?
      false
    end
  end
end