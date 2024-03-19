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
          # @attr [Integer] refund_product_id
          # @attr [Integer] total_amount_paid
          # @attr [Integer] total_amount_refunded
          class RefundMethodSpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :refund_product_id

            attr_accessor :total_amount_paid

            attr_accessor :total_amount_refunded

            # @return (Hash)
            def to_h
              hash = super
              hash['refundProductId'] = @refund_product_id unless @refund_product_id.nil?
              hash['totalAmountPaid'] = @total_amount_paid unless @total_amount_paid.nil?
              hash['totalAmountRefunded'] = @total_amount_refunded unless @total_amount_refunded.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'refundProductId'
                @refund_product_id = hash['refundProductId']
              end
              if hash.has_key? 'totalAmountPaid'
                @total_amount_paid = hash['totalAmountPaid']
              end
              if hash.has_key? 'totalAmountRefunded'
                @total_amount_refunded = hash['totalAmountRefunded']
              end
            end
          end
        end
      end
    end
  end
end
