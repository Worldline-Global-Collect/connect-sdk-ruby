#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require_relative 'api_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # Represents an error response from the Worldline Global Collect platform when a non-existing or removed object is trying to be accessed.
        class ReferenceException < ApiException

          # Create a new ReferenceException.
          # @see ApiException#initialize
          def initialize(status_code, response_body, error_id, errors,
                         message='the Worldline Global Collect platform returned a reference error response')
            super(status_code, response_body, error_id, errors, message)
          end
        end
      end
    end
  end
end
