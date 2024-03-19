#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/order_invoice_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] descriptor
          # @attr [Worldline::Connect::SDK::V1::Domain::OrderInvoiceData] invoice_data
          # @attr [Integer] merchant_order_id
          # @attr [String] merchant_reference
          # @attr [String] provider_id
          # @attr [String] provider_merchant_id
          class OrderReferences < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :descriptor

            attr_accessor :invoice_data

            attr_accessor :merchant_order_id

            attr_accessor :merchant_reference

            attr_accessor :provider_id

            attr_accessor :provider_merchant_id

            # @return (Hash)
            def to_h
              hash = super
              hash['descriptor'] = @descriptor unless @descriptor.nil?
              hash['invoiceData'] = @invoice_data.to_h unless @invoice_data.nil?
              hash['merchantOrderId'] = @merchant_order_id unless @merchant_order_id.nil?
              hash['merchantReference'] = @merchant_reference unless @merchant_reference.nil?
              hash['providerId'] = @provider_id unless @provider_id.nil?
              hash['providerMerchantId'] = @provider_merchant_id unless @provider_merchant_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'descriptor'
                @descriptor = hash['descriptor']
              end
              if hash.has_key? 'invoiceData'
                raise TypeError, "value '%s' is not a Hash" % [hash['invoiceData']] unless hash['invoiceData'].is_a? Hash
                @invoice_data = Worldline::Connect::SDK::V1::Domain::OrderInvoiceData.new_from_hash(hash['invoiceData'])
              end
              if hash.has_key? 'merchantOrderId'
                @merchant_order_id = hash['merchantOrderId']
              end
              if hash.has_key? 'merchantReference'
                @merchant_reference = hash['merchantReference']
              end
              if hash.has_key? 'providerId'
                @provider_id = hash['providerId']
              end
              if hash.has_key? 'providerMerchantId'
                @provider_merchant_id = hash['providerMerchantId']
              end
            end
          end
        end
      end
    end
  end
end
