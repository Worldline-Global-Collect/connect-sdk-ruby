#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/api_resource'
require 'worldline/connect/sdk/communication/response_exception'
require 'worldline/connect/sdk/v1/exception_factory'
require 'worldline/connect/sdk/v1/domain/error_response'
require 'worldline/connect/sdk/v1/domain/find_refunds_response'
require 'worldline/connect/sdk/v1/domain/refund_response'

module Worldline
  module Connect
    module SDK
      module V1
        module Merchant
          module Refunds
            # Refunds client. Thread-safe.
            class RefundsClient < Worldline::Connect::SDK::ApiResource

              # @param parent       [Worldline::Connect::SDK::ApiResource]
              # @param path_context [Hash, nil]
              def initialize(parent, path_context)
                super(parent: parent, path_context: path_context)
              end

              # Resource /!{merchantId}/refunds - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/refunds/find.html Find refunds}
              # @param query   [Worldline::Connect::SDK::V1::Merchant::Refunds::FindRefundsParams]
              # @param context [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::FindRefundsResponse]
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
                uri = instantiate_uri('/v1/{merchantId}/refunds', nil)
                @communicator.get(
                  uri,
                  client_headers,
                  query,
                  Worldline::Connect::SDK::V1::Domain::FindRefundsResponse,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/refunds/!{refundId} - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/refunds/get.html Get refund}
              # @param refund_id [String]
              # @param context   [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::RefundResponse]
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException]if the Worldline Global Collect platform returned any other error
              def get(refund_id, context = nil)
                path_context = {
                  'refundId'.freeze => refund_id,
                }
                uri = instantiate_uri('/v1/{merchantId}/refunds/{refundId}', path_context)
                @communicator.get(
                  uri,
                  client_headers,
                  nil,
                  Worldline::Connect::SDK::V1::Domain::RefundResponse,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/refunds/!{refundId}/approve - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/refunds/approve.html Approve refund}
              # @param refund_id [String]
              # @param body      [Worldline::Connect::SDK::V1::Domain::ApproveRefundRequest]
              # @param context   [Worldline::Connect::SDK::CallContext, nil]
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException]if the Worldline Global Collect platform returned any other error
              def approve(refund_id, body, context = nil)
                path_context = {
                  'refundId'.freeze => refund_id,
                }
                uri = instantiate_uri('/v1/{merchantId}/refunds/{refundId}/approve', path_context)
                @communicator.post(
                  uri,
                  client_headers,
                  nil,
                  body,
                  nil,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/refunds/!{refundId}/cancel - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/refunds/cancel.html Cancel refund}
              # @param refund_id [String]
              # @param context   [Worldline::Connect::SDK::CallContext, nil]
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException]if the Worldline Global Collect platform returned any other error
              def cancel(refund_id, context = nil)
                path_context = {
                  'refundId'.freeze => refund_id,
                }
                uri = instantiate_uri('/v1/{merchantId}/refunds/{refundId}/cancel', path_context)
                @communicator.post(
                  uri,
                  client_headers,
                  nil,
                  nil,
                  nil,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/refunds/!{refundId}/cancelapproval - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/refunds/cancelapproval.html Undo approve refund}
              # @param refund_id [String]
              # @param context   [Worldline::Connect::SDK::CallContext, nil]
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException]if the Worldline Global Collect platform returned any other error
              def cancelapproval(refund_id, context = nil)
                path_context = {
                  'refundId'.freeze => refund_id,
                }
                uri = instantiate_uri('/v1/{merchantId}/refunds/{refundId}/cancelapproval', path_context)
                @communicator.post(
                  uri,
                  client_headers,
                  nil,
                  nil,
                  nil,
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
