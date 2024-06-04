#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require_relative 'declined_transaction_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Represents an error response from a payout call.
        class DeclinedPayoutException < DeclinedTransactionException

          # Create a new DeclinedPayoutException.
          # @see ApiException#initialize
          def initialize(status_code, response_body, response)
            super(status_code, response_body, response&.error_id, response&.errors, build_message(response))
            @response = response
          end

          # The result of creating a payout
          # @return [Worldline::Connect::SDK::V1::Domain::PayoutResult, nil]
          def payout_result
            @response&.payout_result
          end

          private

          # @param response [Worldline::Connect::SDK::V1::Domain::PayoutErrorResponse, nil]
          def build_message(response)
            payout_result = response&.payout_result
            if payout_result.nil?
              'the Worldline Global Collect platform returned a declined payout response'
            else
              "declined payout '#{payout_result.id}' with status '#{payout_result.status}'"
            end
          end
        end
      end
    end
  end
end
