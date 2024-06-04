#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require_relative 'declined_transaction_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Represents an error response from a refund call.
        class DeclinedRefundException < DeclinedTransactionException

          # Create a new DeclinedRefundException.
          # @see ApiException#initialize
          def initialize(status_code, response_body, response)
            super(status_code, response_body, response&.error_id, response&.errors, build_message(response))
            @response = response
          end

          # The result of creating a refund
          # @return [Worldline::Connect::SDK::V1::Domain::RefundResult, nil]
          def refund_result
            @response&.refund_result
          end

          private

          # @param response [Worldline::Connect::SDK::V1::Domain::RefundErrorResponse, nil]
          def build_message(response)
            refund_result = response&.refund_result
            if refund_result.nil?
              'the Worldline Global Collect platform returned a declined refund response'
            else
              "declined refund '#{refund_result.id}' with status '#{refund_result.status}'"
            end
          end
        end
      end
    end
  end
end
