#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/mandate_customer'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] alias
          # @attr [Worldline::Connect::SDK::V1::Domain::MandateCustomer] customer
          # @attr [String] customer_reference
          # @attr [String] recurrence_type
          # @attr [String] status
          # @attr [String] unique_mandate_reference
          class MandateResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :alias

            attr_accessor :customer

            attr_accessor :customer_reference

            attr_accessor :recurrence_type

            attr_accessor :status

            attr_accessor :unique_mandate_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['alias'] = @alias unless @alias.nil?
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['customerReference'] = @customer_reference unless @customer_reference.nil?
              hash['recurrenceType'] = @recurrence_type unless @recurrence_type.nil?
              hash['status'] = @status unless @status.nil?
              hash['uniqueMandateReference'] = @unique_mandate_reference unless @unique_mandate_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'alias'
                @alias = hash['alias']
              end
              if hash.has_key? 'customer'
                raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
                @customer = Worldline::Connect::SDK::V1::Domain::MandateCustomer.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'customerReference'
                @customer_reference = hash['customerReference']
              end
              if hash.has_key? 'recurrenceType'
                @recurrence_type = hash['recurrenceType']
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
              if hash.has_key? 'uniqueMandateReference'
                @unique_mandate_reference = hash['uniqueMandateReference']
              end
            end
          end
        end
      end
    end
  end
end
