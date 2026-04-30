#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/capture_payment_order_additional_input'
require 'worldline/connect/sdk/v1/domain/capture_payment_order_references'
require 'worldline/connect/sdk/v1/domain/shipping'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::CapturePaymentOrderAdditionalInput] additional_input
          # @attr [Worldline::Connect::SDK::V1::Domain::CapturePaymentOrderReferences] references
          # @attr [Worldline::Connect::SDK::V1::Domain::Shipping] shipping
          class CapturePaymentOrder < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :additional_input

            attr_accessor :references

            attr_accessor :shipping

            # @return (Hash)
            def to_h
              hash = super
              hash['additionalInput'] = @additional_input.to_h unless @additional_input.nil?
              hash['references'] = @references.to_h unless @references.nil?
              hash['shipping'] = @shipping.to_h unless @shipping.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'additionalInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['additionalInput']] unless hash['additionalInput'].is_a? Hash
                @additional_input = Worldline::Connect::SDK::V1::Domain::CapturePaymentOrderAdditionalInput.new_from_hash(hash['additionalInput'])
              end
              if hash.has_key? 'references'
                raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
                @references = Worldline::Connect::SDK::V1::Domain::CapturePaymentOrderReferences.new_from_hash(hash['references'])
              end
              if hash.has_key? 'shipping'
                raise TypeError, "value '%s' is not a Hash" % [hash['shipping']] unless hash['shipping'].is_a? Hash
                @shipping = Worldline::Connect::SDK::V1::Domain::Shipping.new_from_hash(hash['shipping'])
              end
            end
          end
        end
      end
    end
  end
end
