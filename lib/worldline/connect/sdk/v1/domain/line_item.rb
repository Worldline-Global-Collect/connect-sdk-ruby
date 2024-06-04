#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/line_item_invoice_data'
require 'worldline/connect/sdk/v1/domain/line_item_level3_interchange_information'
require 'worldline/connect/sdk/v1/domain/order_line_details'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money
          # @attr [Worldline::Connect::SDK::V1::Domain::LineItemInvoiceData] invoice_data
          # @attr [Worldline::Connect::SDK::V1::Domain::LineItemLevel3InterchangeInformation] level3_interchange_information
          # @attr [Worldline::Connect::SDK::V1::Domain::OrderLineDetails] order_line_details
          class LineItem < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount_of_money

            attr_accessor :invoice_data

            # @deprecated Use orderLineDetails instead
            attr_accessor :level3_interchange_information

            attr_accessor :order_line_details

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['invoiceData'] = @invoice_data.to_h unless @invoice_data.nil?
              hash['level3InterchangeInformation'] = @level3_interchange_information.to_h unless @level3_interchange_information.nil?
              hash['orderLineDetails'] = @order_line_details.to_h unless @order_line_details.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'invoiceData'
                raise TypeError, "value '%s' is not a Hash" % [hash['invoiceData']] unless hash['invoiceData'].is_a? Hash
                @invoice_data = Worldline::Connect::SDK::V1::Domain::LineItemInvoiceData.new_from_hash(hash['invoiceData'])
              end
              if hash.has_key? 'level3InterchangeInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['level3InterchangeInformation']] unless hash['level3InterchangeInformation'].is_a? Hash
                @level3_interchange_information = Worldline::Connect::SDK::V1::Domain::LineItemLevel3InterchangeInformation.new_from_hash(hash['level3InterchangeInformation'])
              end
              if hash.has_key? 'orderLineDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['orderLineDetails']] unless hash['orderLineDetails'].is_a? Hash
                @order_line_details = Worldline::Connect::SDK::V1::Domain::OrderLineDetails.new_from_hash(hash['orderLineDetails'])
              end
            end
          end
        end
      end
    end
  end
end
