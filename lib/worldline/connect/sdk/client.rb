#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'base64'
require 'worldline/connect/sdk/api_resource'
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/logging/logging_capable'
require 'worldline/connect/sdk/logging/obfuscation/obfuscation_capable'
require 'worldline/connect/sdk/v1/v1_client'

module Worldline
  module Connect
    module SDK
      # Worldline Global Collect platform client.
      #
      # This client and all its child clients are bound to one specific value for the X-GCS-ClientMetaInfo header.
      #
      # To get a new client with a different header value, use with_client_meta_info.
      #
      # Thread safe.
      class Client < ApiResource
        include Logging::LoggingCapable
        include Logging::Obfuscation::ObfuscationCapable

        # @param communicator     [Worldline::Connect::SDK::Communicator]
        # @param client_meta_info [String, nil]
        def initialize(communicator, client_meta_info = nil)
          super(communicator: communicator, client_meta_info: client_meta_info)
        end

        # @param client_meta_info [String] JSON string containing the metadata for the client
        # @return [Worldline::Connect::SDK::Client] a Client which uses the passed metadata for the X-GCS-ClientMetaInfo header.
        # @raise [Worldline::Connect::SDK::JSON::MarshallerSyntaxException] if the given clientMetaInfo is not a valid JSON string
        def with_client_meta_info(client_meta_info)
          if @client_meta_info.nil? && client_meta_info.nil?
            self
          elsif client_meta_info.nil?
            return Client.new(@communicator, nil)
          else
            # Checking to see if this is valid JSON (no JSON parse exceptions)
            @communicator.marshaller.unmarshal(client_meta_info, DataObject)
            client_meta_info = Base64.strict_encode64(client_meta_info)
            if @client_meta_info == client_meta_info
              self
            else
              return Client.new(@communicator, client_meta_info)
            end
          end
        end

        # Utility method that delegates the call to this client's communicator.
        def close_idle_connections(idle_time)
          @communicator.close_idle_connections(idle_time)
        end

        # Utility method that delegates the call to this client's communicator.
        def close_expired_connections
          @communicator.close_expired_connections
        end

        # Sets the current body obfuscator to use.
        # @param body_obfuscator [Worldline::Connect::SDK::Logging::Obfuscation::BodyObfuscator]
        def set_body_obfuscator(body_obfuscator)
          @communicator.set_body_obfuscator(body_obfuscator)
        end

        # Sets the current header obfuscator to use.
        # @param header_obfuscator [Worldline::Connect::SDK::Logging::Obfuscation::HeaderObfuscator]
        def set_header_obfuscator(header_obfuscator)
          @communicator.set_header_obfuscator(header_obfuscator)
        end

        # Turns on logging using the given communicator logger.
        # @param communicator_logger [Worldline::Connect::SDK::Logging::CommunicatorLogger]
        def enable_logging(communicator_logger)
          @communicator.enable_logging(communicator_logger)
        end

        # Turns off logging.
        def disable_logging
          @communicator.disable_logging
        end

        # Releases any system resources associated with this object.
        def close
          @communicator.close
        end

        # @return [Worldline::Connect::SDK::V1::V1Client]
        def v1
          Worldline::Connect::SDK::V1::V1Client.new(self, nil)
        end
      end
    end
  end
end
