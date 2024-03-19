#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require_relative 'api_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # This exception is thrown when a request sent to the Worldline Global Collect platform is not correctly authenticated.
        # Corresponds to a HTTP status code of 403.
        # @see ApiException#initialize
        class AuthorizationException < ApiException

          def initialize(status_code, response_body, error_id, errors,
                         message='the Worldline Global Collect platform returned an authorization error response')
            super(status_code, response_body, error_id, errors, message)
          end
        end
      end
    end
  end
end
