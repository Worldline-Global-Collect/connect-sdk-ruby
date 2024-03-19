#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_order_status'
require 'worldline/connect/sdk/v1/domain/order_status_output'
require 'worldline/connect/sdk/v1/domain/refund_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::RefundOutput] refund_output
          # @attr [String] status
          # @attr [Worldline::Connect::SDK::V1::Domain::OrderStatusOutput] status_output
          class RefundResult < Worldline::Connect::SDK::V1::Domain::AbstractOrderStatus

            attr_accessor :refund_output

            attr_accessor :status

            attr_accessor :status_output

            # @return (Hash)
            def to_h
              hash = super
              hash['refundOutput'] = @refund_output.to_h unless @refund_output.nil?
              hash['status'] = @status unless @status.nil?
              hash['statusOutput'] = @status_output.to_h unless @status_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'refundOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['refundOutput']] unless hash['refundOutput'].is_a? Hash
                @refund_output = Worldline::Connect::SDK::V1::Domain::RefundOutput.new_from_hash(hash['refundOutput'])
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
              if hash.has_key? 'statusOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']] unless hash['statusOutput'].is_a? Hash
                @status_output = Worldline::Connect::SDK::V1::Domain::OrderStatusOutput.new_from_hash(hash['statusOutput'])
              end
            end
          end
        end
      end
    end
  end
end
