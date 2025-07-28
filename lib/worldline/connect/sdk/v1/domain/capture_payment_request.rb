#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/capture_payment_order'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Integer] amount
          # @attr [true/false] is_final
          # @attr [Worldline::Connect::SDK::V1::Domain::CapturePaymentOrder] order
          class CapturePaymentRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount

            attr_accessor :is_final

            attr_accessor :order

            # @return (Hash)
            def to_h
              hash = super
              hash['amount'] = @amount unless @amount.nil?
              hash['isFinal'] = @is_final unless @is_final.nil?
              hash['order'] = @order.to_h unless @order.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amount'
                @amount = hash['amount']
              end
              if hash.has_key? 'isFinal'
                @is_final = hash['isFinal']
              end
              if hash.has_key? 'order'
                raise TypeError, "value '%s' is not a Hash" % [hash['order']] unless hash['order'].is_a? Hash
                @order = Worldline::Connect::SDK::V1::Domain::CapturePaymentOrder.new_from_hash(hash['order'])
              end
            end
          end
        end
      end
    end
  end
end
