#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require_relative 'api_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Represents an error response from the Worldline Global Collect platform when something went wrong at the Worldline Global Collect platform or further downstream.
        class PlatformException < ApiException

          # Create a new PlatformException.
          # @see ApiException#initialize
          def initialize(status_code, response_body, error_id, errors,
                         message='the Worldline Global Collect platform returned an error response')
            super(status_code, response_body, error_id, errors, message)
          end
        end
      end
    end
  end
end
