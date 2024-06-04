#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/api_resource'
require 'worldline/connect/sdk/communication/response_exception'
require 'worldline/connect/sdk/v1/exception_factory'
require 'worldline/connect/sdk/v1/domain/create_payment_product_session_response'
require 'worldline/connect/sdk/v1/domain/device_fingerprint_response'
require 'worldline/connect/sdk/v1/domain/directory'
require 'worldline/connect/sdk/v1/domain/error_response'
require 'worldline/connect/sdk/v1/domain/get_customer_details_response'
require 'worldline/connect/sdk/v1/domain/payment_product_networks_response'
require 'worldline/connect/sdk/v1/domain/payment_product_response'
require 'worldline/connect/sdk/v1/domain/payment_products'

module Worldline
  module Connect
    module SDK
      module V1
        module Merchant
          module Products
            # Products client. Thread-safe.
            class ProductsClient < Worldline::Connect::SDK::ApiResource

              # @param parent       [Worldline::Connect::SDK::ApiResource]
              # @param path_context [Hash, nil]
              def initialize(parent, path_context)
                super(parent: parent, path_context: path_context)
              end

              # Resource /!{merchantId}/products - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/products/find.html Get payment products}
              #
              # @param query   [Worldline::Connect::SDK::V1::Merchant::Products::FindProductsParams]
              # @param context [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::PaymentProducts]
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException] if the Worldline Global Collect platform returned any other error
              def find(query, context = nil)
                uri = instantiate_uri('/v1/{merchantId}/products', nil)
                @communicator.get(
                  uri,
                  client_headers,
                  query,
                  Worldline::Connect::SDK::V1::Domain::PaymentProducts,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/products/!{paymentProductId} - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/products/get.html Get payment product}
              #
              # @param payment_product_id [Integer]
              # @param query              [Worldline::Connect::SDK::V1::Merchant::Products::GetProductParams]
              # @param context            [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::PaymentProductResponse]
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException] if the Worldline Global Collect platform returned any other error
              def get(payment_product_id, query, context = nil)
                path_context = {
                  'paymentProductId'.freeze => payment_product_id.to_s,
                }
                uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}', path_context)
                @communicator.get(
                  uri,
                  client_headers,
                  query,
                  Worldline::Connect::SDK::V1::Domain::PaymentProductResponse,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/products/!{paymentProductId}/directory - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/products/directory.html Get payment product directory}
              #
              # @param payment_product_id [Integer]
              # @param query              [Worldline::Connect::SDK::V1::Merchant::Products::DirectoryParams]
              # @param context            [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::Directory]
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException] if the Worldline Global Collect platform returned any other error
              def directory(payment_product_id, query, context = nil)
                path_context = {
                  'paymentProductId'.freeze => payment_product_id.to_s,
                }
                uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}/directory', path_context)
                @communicator.get(
                  uri,
                  client_headers,
                  query,
                  Worldline::Connect::SDK::V1::Domain::Directory,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/products/!{paymentProductId}/customerDetails - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/products/customerDetails.html Get customer details}
              #
              # @param payment_product_id [Integer]
              # @param body               [Worldline::Connect::SDK::V1::Domain::GetCustomerDetailsRequest]
              # @param context            [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::GetCustomerDetailsResponse]
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException] if the Worldline Global Collect platform returned any other error
              def customer_details(payment_product_id, body, context = nil)
                path_context = {
                  'paymentProductId'.freeze => payment_product_id.to_s,
                }
                uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}/customerDetails', path_context)
                @communicator.post(
                  uri,
                  client_headers,
                  nil,
                  body,
                  Worldline::Connect::SDK::V1::Domain::GetCustomerDetailsResponse,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/products/!{paymentProductId}/deviceFingerprint - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/products/deviceFingerprint.html Get device fingerprint}
              #
              # @param payment_product_id [Integer]
              # @param body               [Worldline::Connect::SDK::V1::Domain::DeviceFingerprintRequest]
              # @param context            [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::DeviceFingerprintResponse]
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException] if the Worldline Global Collect platform returned any other error
              def device_fingerprint(payment_product_id, body, context = nil)
                path_context = {
                  'paymentProductId'.freeze => payment_product_id.to_s,
                }
                uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}/deviceFingerprint', path_context)
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

              # Resource /!{merchantId}/products/!{paymentProductId}/networks - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/products/networks.html Get payment product networks}
              #
              # @param payment_product_id [Integer]
              # @param query              [Worldline::Connect::SDK::V1::Merchant::Products::NetworksParams]
              # @param context            [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::PaymentProductNetworksResponse]
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException] if the Worldline Global Collect platform returned any other error
              def networks(payment_product_id, query, context = nil)
                path_context = {
                  'paymentProductId'.freeze => payment_product_id.to_s,
                }
                uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}/networks', path_context)
                @communicator.get(
                  uri,
                  client_headers,
                  query,
                  Worldline::Connect::SDK::V1::Domain::PaymentProductNetworksResponse,
                  context)
              rescue ResponseException => e
                error_type = Worldline::Connect::SDK::V1::Domain::ErrorResponse
                error_object = @communicator.marshaller.unmarshal(e.body, error_type)
                raise Worldline::Connect::SDK::V1.create_exception(e.status_code, e.body, error_object, context)
              end

              # Resource /!{merchantId}/products/!{paymentProductId}/sessions - {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/products/sessions.html Create session for payment product}
              #
              # @param payment_product_id [Integer]
              # @param body               [Worldline::Connect::SDK::V1::Domain::CreatePaymentProductSessionRequest]
              # @param context            [Worldline::Connect::SDK::CallContext, nil]
              # @return [Worldline::Connect::SDK::V1::Domain::CreatePaymentProductSessionResponse]
              # @raise [Worldline::Connect::SDK::V1::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
              # @raise [Worldline::Connect::SDK::V1::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
              # @raise [Worldline::Connect::SDK::V1::AuthorizationException] if the request was not allowed (HTTP status code 403)
              # @raise [Worldline::Connect::SDK::V1::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
              #        or there was a conflict (HTTP status code 404, 409 or 410)
              # @raise [Worldline::Connect::SDK::V1::PlatformException] if something went wrong at the Worldline Global Collect platform,
              #        the Worldline Global Collect platform was unable to process a message from a downstream partner/acquirer,
              #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
              # @raise [Worldline::Connect::SDK::V1::ApiException] if the Worldline Global Collect platform returned any other error
              def sessions(payment_product_id, body, context = nil)
                path_context = {
                  'paymentProductId'.freeze => payment_product_id.to_s,
                }
                uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}/sessions', path_context)
                @communicator.post(
                  uri,
                  client_headers,
                  nil,
                  body,
                  Worldline::Connect::SDK::V1::Domain::CreatePaymentProductSessionResponse,
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
