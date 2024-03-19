#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/declined_transaction_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Indicates that a payout is declined by the Worldline Global Collect platform or one of its downstream partners/acquirers.
        class DeclinedPayoutException < DeclinedTransactionException

          # Create a new DeclinedPayoutException.
          # @see ApiException#initialize
          def initialize(status_code, response_body, errors)
            if errors.nil?
              super(status_code, response_body, nil, nil, build_message(errors))
            else
              super(status_code, response_body, errors.error_id, errors.errors, build_message(errors))
            end
            @errors = errors
          end

          # The declined payout result as returned by the Worldline Global Collect platform.
          # @return [Worldline::Connect::SDK::V1::Domain::PayoutResult]
          def payout_result
            if @errors.nil?
              nil
            else
              @errors.payout_result
            end
          end

          private

          def build_message(errors)
            if !errors.nil?
              payout = errors.payout_result
            else
              payout = nil
            end
            if payout.nil?
              'the Worldline Global Collect platform returned a declined payout response'
            else
              "declined payout '" + payout.id + "' with status '" + payout.status + "'"
            end
          end
        end
      end
    end
  end
end
