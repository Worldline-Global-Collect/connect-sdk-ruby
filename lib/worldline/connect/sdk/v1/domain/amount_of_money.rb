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
          # @attr [Integer] amount
          # @attr [String] currency_code
          class AmountOfMoney < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount

            attr_accessor :currency_code

            # @return (Hash)
            def to_h
              hash = super
              hash['amount'] = @amount unless @amount.nil?
              hash['currencyCode'] = @currency_code unless @currency_code.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amount'
                @amount = hash['amount']
              end
              if hash.has_key? 'currencyCode'
                @currency_code = hash['currencyCode']
              end
            end
          end
        end
      end
    end
  end
end
