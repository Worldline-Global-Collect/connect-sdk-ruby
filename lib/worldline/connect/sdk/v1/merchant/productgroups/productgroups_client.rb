#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/api_resource'
require 'worldline/connect/sdk/communication/response_exception'
require 'worldline/connect/sdk/v1/exception_factory'
require 'worldline/connect/sdk/v1/domain/device_fingerprint_response'
require 'worldline/connect/sdk/v1/domain/error_response'
require 'worldline/connect/sdk/v1/domain/payment_product_group_response'
require 'worldline/connect/sdk/v1/domain/payment_product_groups'

module Worldline
  module Connect
    module SDK
      module V1
        module Merchant
          module Productgroups
            # Productgroups client. Thread-safe.
            class ProductgroupsClient < Worldline::Connect::SDK::ApiResource

              # @param parent       [Worldline::Connect::SDK::ApiResource]
              # @param path_context [Hash, nil]
              def initialize(parent, path_context)
                super(parent: parent, path_context: path_context)
              end

              # Resource /!{merchantId}/productgroups - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/productgroups/find.html Get payment product groups}
              # @param query   [Worldline::Connect::SDK::V1::Merchant::Productgroups::FindProductgroupsParams]
              # @param context [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::PaymentProductGroups]
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException]if the Worldline Global Collect platform returned any other error
              def find(query, context = nil)
                uri = instantiate_uri('/v1/{merchantId}/productgroups', nil)
                @communicator.get(
                  uri,
                  client_headers,
                  query,
                  Worldline::Connect::SDK::V1::Domain::PaymentProductGroups,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/productgroups/!{paymentProductGroupId} - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/productgroups/get.html Get payment product group}
              # @param payment_product_group_id [String]
              # @param query                    [Worldline::Connect::SDK::V1::Merchant::Productgroups::GetProductgroupParams]
              # @param context                  [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::PaymentProductGroupResponse]
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException]if the Worldline Global Collect platform returned any other error
              def get(payment_product_group_id, query, context = nil)
                path_context = {
                  'paymentProductGroupId'.freeze => payment_product_group_id,
                }
                uri = instantiate_uri('/v1/{merchantId}/productgroups/{paymentProductGroupId}', path_context)
                @communicator.get(
                  uri,
                  client_headers,
                  query,
                  Worldline::Connect::SDK::V1::Domain::PaymentProductGroupResponse,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/productgroups/!{paymentProductGroupId}/deviceFingerprint - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/productgroups/deviceFingerprint.html Get device fingerprint}
              # @param payment_product_group_id [String]
              # @param body                     [Worldline::Connect::SDK::V1::Domain::DeviceFingerprintRequest]
              # @param context                  [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::DeviceFingerprintResponse]
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException]if the Worldline Global Collect platform returned any other error
              def device_fingerprint(payment_product_group_id, body, context = nil)
                path_context = {
                  'paymentProductGroupId'.freeze => payment_product_group_id,
                }
                uri = instantiate_uri('/v1/{merchantId}/productgroups/{paymentProductGroupId}/deviceFingerprint', path_context)
                @communicator.post(
                  uri,
                  client_headers,
                  nil,
                  body,
                  Worldline::Connect::SDK::V1::Domain::DeviceFingerprintResponse,
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
