#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/api_error'

module Worldline
  module Connect
    module SDK
      module V1
        # Base class for many exceptions raised by the SDK.
        # It is raised when an error response is received from the Worldline Global Collect platform.
        # It contains data about the returned response.
        #
        # @attr_reader [Integer] status_code   HTTP status code of the returned response.
        # @attr_reader [String]  response_body Message body of the returned response.
        # @attr_reader [String]  error_id      An error id corresponding to the error that occurred, if available.
        # @attr_reader [Array<Worldline::Connect::SDK::V1::Domain::APIError>] errors A list of errors received from the Worldline Global Collect platform;
        #              may be empty but never _nil_
        class ApiException < RuntimeError

          # Creates a new ApiException that reports an error response from the Worldline Global Collect platform.
          #
          # @param status_code   (Integer) HTTP status code the response
          # @param response_body (String) HTTP response body
          # @param error_id      (String) error id of the error, may be _nil_
          # @param errors        (Array<Worldline::Connect::SDK::V1::Domain::APIError>) a list of errors that occurred, may be empty
          # @param message       (String) error message to include
          def initialize(status_code, response_body, error_id, errors,
                         message='the Worldline Global Collect platform returned an error response')
            super(message)
            @status_code = status_code
            @response_body = response_body
            @error_id = error_id
            if errors.nil?
              @errors = [].freeze
            else
              @errors = errors
            end
          end

          attr_reader :status_code
          attr_reader :response_body
          attr_reader :error_id
          attr_reader :errors

          def to_s
            str = super.to_s
            if @status_code > 0
              str += '; status_code=' + @status_code.to_s
            end
            if !@response_body.nil? && @response_body.length > 0
              str += "; response_body='" + @response_body + "'"
            end
            str.to_s
          end
        end
      end
    end
  end
end
