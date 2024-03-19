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
          # @attr [String] invoice_number
          # @attr [Integer] merchant_order_id
          # @attr [String] merchant_reference
          class PayoutReferences < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :invoice_number

            attr_accessor :merchant_order_id

            attr_accessor :merchant_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['invoiceNumber'] = @invoice_number unless @invoice_number.nil?
              hash['merchantOrderId'] = @merchant_order_id unless @merchant_order_id.nil?
              hash['merchantReference'] = @merchant_reference unless @merchant_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'invoiceNumber'
                @invoice_number = hash['invoiceNumber']
              end
              if hash.has_key? 'merchantOrderId'
                @merchant_order_id = hash['merchantOrderId']
              end
              if hash.has_key? 'merchantReference'
                @merchant_reference = hash['merchantReference']
              end
            end
          end
        end
      end
    end
  end
end
