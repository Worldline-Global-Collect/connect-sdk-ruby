#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/payment_references'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentReferences] references
          class OrderOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount_of_money

            attr_accessor :references

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['references'] = @references.to_h unless @references.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'references'
                raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
                @references = Worldline::Connect::SDK::V1::Domain::PaymentReferences.new_from_hash(hash['references'])
              end
            end
          end
        end
      end
    end
  end
end
