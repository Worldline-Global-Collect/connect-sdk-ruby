#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require_relative 'api_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Raised when the request sent to the Worldline Global Collect platform returned a HTTP response with status code 400.
        # This indicates the request received by the Worldline Global Collect platform was malformed.
        class ValidationException < ApiException

          # Create a new ValidationException
          # @see ApiException#initialize
          def initialize(status_code, response_body, error_id, errors,
                         message='the Worldline Global Collect platform returned an incorrect request error response')
            super(status_code, response_body, error_id, errors, message)
          end
        end
      end
    end
  end
end
