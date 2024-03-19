#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/declined_transaction_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Indicates that a payment is declined by the Worldline Global Collect platform or one of its downstream partners/acquirers.
        class DeclinedPaymentException < DeclinedTransactionException

          # Create a new DeclinedPaymentException.
          # @see ApiException#initialize
          def initialize(status_code, response_body, errors)
            if errors.nil?
              super(status_code, response_body, nil, nil, build_message(errors))
            else
              super(status_code, response_body, errors.error_id, errors.errors, build_message(errors))
            end
            @errors = errors
          end

          # The declined payment result returned by the Worldline Global Collect platform.
          # @return [Worldline::Connect::SDK::V1::Domain::CreatePaymentResult]
          def payment_result
            if @errors.nil?
              nil
            else
              @errors.payment_result
            end
          end

          private

          def build_message(errors)
            if !errors.nil? && !errors.payment_result.nil?
              payment = errors.payment_result.payment
            else
              payment = nil
            end
            if payment.nil?
              'the Worldline Global Collect platform returned a declined payment response'
            else
              "declined payment '" + payment.id + "' with status '" + payment.status + "'"
            end
          end
        end
      end
    end
  end
end
