#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] payment_id
          # @attr [String] raw_device_fingerprint_output
          class DeviceFingerprintDetails < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment_id

            attr_accessor :raw_device_fingerprint_output

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentId'] = @payment_id unless @payment_id.nil?
              hash['rawDeviceFingerprintOutput'] = @raw_device_fingerprint_output unless @raw_device_fingerprint_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentId'
                @payment_id = hash['paymentId']
              end
              if hash.has_key? 'rawDeviceFingerprintOutput'
                @raw_device_fingerprint_output = hash['rawDeviceFingerprintOutput']
              end
            end
          end
        end
      end
    end
  end
end
