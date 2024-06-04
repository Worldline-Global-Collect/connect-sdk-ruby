#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require_relative 'declined_transaction_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Represents an error response from a create payment call.
        class DeclinedPaymentException < DeclinedTransactionException

          # Create a new DeclinedPaymentException.
          # @see ApiException#initialize
          def initialize(status_code, response_body, response)
            super(status_code, response_body, response&.error_id, response&.errors, build_message(response))
            @response = response
          end

          # The result of creating a payment
          # @return [Worldline::Connect::SDK::V1::Domain::CreatePaymentResult, nil]
          def payment_result
            @response&.payment_result
          end

          private

          # @param response [Worldline::Connect::SDK::V1::Domain::PaymentErrorResponse, nil]
          def build_message(response)
            payment = response&.payment_result&.payment
            if payment.nil?
              'the Worldline Global Collect platform returned a declined payment response'
            else
              "declined payment '#{payment.id}' with status '#{payment.status}'"
            end
          end
        end
      end
    end
  end
end
