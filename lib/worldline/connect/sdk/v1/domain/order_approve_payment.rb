#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/additional_order_input_airline_data'
require 'worldline/connect/sdk/v1/domain/customer_approve_payment'
require 'worldline/connect/sdk/v1/domain/order_references_approve_payment'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AdditionalOrderInputAirlineData] additional_input
          # @attr [Worldline::Connect::SDK::V1::Domain::CustomerApprovePayment] customer
          # @attr [Worldline::Connect::SDK::V1::Domain::OrderReferencesApprovePayment] references
          class OrderApprovePayment < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :additional_input

            attr_accessor :customer

            attr_accessor :references

            # @return (Hash)
            def to_h
              hash = super
              hash['additionalInput'] = @additional_input.to_h unless @additional_input.nil?
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['references'] = @references.to_h unless @references.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'additionalInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['additionalInput']] unless hash['additionalInput'].is_a? Hash
                @additional_input = Worldline::Connect::SDK::V1::Domain::AdditionalOrderInputAirlineData.new_from_hash(hash['additionalInput'])
              end
              if hash.has_key? 'customer'
                raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
                @customer = Worldline::Connect::SDK::V1::Domain::CustomerApprovePayment.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'references'
                raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
                @references = Worldline::Connect::SDK::V1::Domain::OrderReferencesApprovePayment.new_from_hash(hash['references'])
              end
            end
          end
        end
      end
    end
  end
end
