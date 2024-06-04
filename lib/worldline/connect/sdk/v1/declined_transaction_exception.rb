#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require_relative 'api_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Represents an error response from a create payment, payout or refund call.
        class DeclinedTransactionException < ApiException

          # Create a new DeclinedTransactionException.
          # @see ApiException#initialize
          def initialize(status_code, response_body, error_id, errors, message = nil)
            if message
              super(status_code, response_body, error_id, errors, message)
            else
              super(status_code, response_body, error_id, errors)
            end
          end
        end
      end
    end
  end
end
