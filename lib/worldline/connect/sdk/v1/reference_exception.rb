#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require_relative 'api_exception'

module Worldline
  module Connect
    module SDK
      module V1
        # This error is raised when the request refers to a resource or object that is not found by the Worldline Global Collect platform.
        # The object referred to may not exist or it could have been removed recently.
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
