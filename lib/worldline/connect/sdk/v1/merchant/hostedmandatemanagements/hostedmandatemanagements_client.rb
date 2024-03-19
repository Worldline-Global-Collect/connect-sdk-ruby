#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/api_resource'
require 'worldline/connect/sdk/communication/response_exception'
require 'worldline/connect/sdk/v1/exception_factory'
require 'worldline/connect/sdk/v1/domain/create_hosted_mandate_management_response'
require 'worldline/connect/sdk/v1/domain/error_response'
require 'worldline/connect/sdk/v1/domain/get_hosted_mandate_management_response'

module Worldline
  module Connect
    module SDK
      module V1
        module Merchant
          module Hostedmandatemanagements
            # Hostedmandatemanagements client. Thread-safe.
            class HostedmandatemanagementsClient < Worldline::Connect::SDK::ApiResource

              # @param parent       [Worldline::Connect::SDK::ApiResource]
              # @param path_context [Hash, nil]
              def initialize(parent, path_context)
                super(parent: parent, path_context: path_context)
              end

              # Resource /!{merchantId}/hostedmandatemanagements - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/hostedmandatemanagements/create.html Create hosted mandate management}
              # @param body    [Worldline::Connect::SDK::V1::Domain::CreateHostedMandateManagementRequest]
              # @param context [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::CreateHostedMandateManagementResponse]
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException]if the Worldline Global Collect platform returned any other error
              def create(body, context = nil)
                uri = instantiate_uri('/v1/{merchantId}/hostedmandatemanagements', nil)
                @communicator.post(
                  uri,
                  client_headers,
                  nil,
                  body,
                  Worldline::Connect::SDK::V1::Domain::CreateHostedMandateManagementResponse,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/hostedmandatemanagements/!{hostedMandateManagementId} - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/hostedmandatemanagements/get.html Get hosted mandate management status}
              # @param hosted_mandate_management_id [String]
              # @param context                      [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::GetHostedMandateManagementResponse]
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException]if the Worldline Global Collect platform returned any other error
              def get(hosted_mandate_management_id, context = nil)
                path_context = {
                  'hostedMandateManagementId'.freeze => hosted_mandate_management_id,
                }
                uri = instantiate_uri('/v1/{merchantId}/hostedmandatemanagements/{hostedMandateManagementId}', path_context)
                @communicator.get(
                  uri,
                  client_headers,
                  nil,
                  Worldline::Connect::SDK::V1::Domain::GetHostedMandateManagementResponse,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end
            end
          end
        end
      end
    end
  end
end
