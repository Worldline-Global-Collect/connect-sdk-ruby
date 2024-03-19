#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/declined_transaction_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Indicates that a refund is declined by the Worldline Global Collect platform or one of its downstream partners/acquirers.
        class DeclinedRefundException < DeclinedTransactionException

          # Create a new DeclinedRefundException.
          # @see ApiException#initialize
          def initialize(status_code, response_body, errors)
            if errors.nil?
              super(status_code, response_body, nil, nil, build_message(errors))
            else
              super(status_code, response_body, errors.error_id, errors.errors, build_message(errors))
            end
            @errors = errors
          end

          # The declined refund result as returned by the Worldline Global Collect platform.
          # @return [Worldline::Connect::SDK::V1::Domain::RefundResult]
          def refund_result
            if @errors.nil?
              nil
            else
              @errors.refund_result
            end
          end

          private

          def build_message(errors)
            if !errors.nil?
              refund = errors.refund_result
            else
              refund = nil
            end
            if refund.nil?
              'the Worldline Global Collect platform returned a declined refund response'
            else
              "declined refund '" + refund.id + "' with status '" + refund.status + "'"
            end
          end
        end
      end
    end
  end
end
