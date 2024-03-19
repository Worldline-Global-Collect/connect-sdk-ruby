#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/api_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Indicates that a transaction is declined by the Worldline Global Collect platform or one of its downstream partners/acquirers.
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
