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
          # @attr [String] merchant_capture_reference
          class CapturePaymentOrderReferences < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :merchant_capture_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['merchantCaptureReference'] = @merchant_capture_reference unless @merchant_capture_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'merchantCaptureReference'
                @merchant_capture_reference = hash['merchantCaptureReference']
              end
            end
          end
        end
      end
    end
  end
end
