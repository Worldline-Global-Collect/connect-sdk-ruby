#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require_relative 'api_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Represents an error response from the Worldline Global Collect platform when an idempotent request failed because the first request has not finished yet.
        # The _idempotence_request_timestamp_ indicates the time when the first request with this _idempotence_key_ arrived.
        #
        # @attr_reader [String] idempotence_key                The idempotence key used in the request.
        # @attr_reader [Integer] idempotence_request_timestamp A timestamp indicating the arrival time of the request that conflicts with the request just sent.
        class IdempotenceException < ApiException

          # Create a new IdempotenceException.
          # @see ApiException#initialize
          def initialize(status_code, response_body, error_id, errors, idempotence_key, idempotence_request_timestamp,
                         message='the Worldline Global Collect platform returned a duplicate request error response')
            super(status_code, response_body, error_id, errors, message)
            @idempotence_key = idempotence_key
            @idempotence_request_timestamp = idempotence_request_timestamp
          end

          attr_reader :idempotence_key
          attr_reader :idempotence_request_timestamp
        end
      end
    end
  end
end
