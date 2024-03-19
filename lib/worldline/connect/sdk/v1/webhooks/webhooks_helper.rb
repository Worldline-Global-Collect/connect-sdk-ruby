#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/webhooks_event'
require 'worldline/connect/sdk/webhooks/api_version_mismatch_exception'
require 'worldline/connect/sdk/webhooks/signature_validator'

module Worldline
  module Connect
    module SDK
      module V1
        module Webhooks
          # Worldline Global Collect platform v1 webhooks Helper, Thread-safe.
          class WebhooksHelper
            def initialize(marshaller, secret_key_store)
              raise ArgumentError if marshaller.nil?
              @marshaller = marshaller
              @signature_validator = Worldline::Connect::SDK::Webhooks::SignatureValidator.new(secret_key_store)
            end

            # Unmarshals the given body, while also validating it using the given request headers.
            #
            # @param body            [String] body of the request
            # @param request_headers [Array<Worldline::Connect::SDK::Communication::RequestHeader>] headers of the request
            # @return [Worldline::Connect::SDK::V1::Domain::WebhooksEvent]
            def unmarshal(body, request_headers)
              @signature_validator.validate(body, request_headers)

              event = @marshaller.unmarshal(body, Worldline::Connect::SDK::V1::Domain::WebhooksEvent)
              validate_api_version(event)
              event
            end

            private

            def validate_api_version(event)
              raise Worldline::Connect::SDK::Webhooks::ApiVersionMismatchException.new(event.api_version, 'v1') unless 'v1'.eql?(event.api_version)
            end
          end
        end
      end
    end
  end
end
