#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_of_money'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money
          # @attr [String] country_code
          # @attr [true/false] is_installments
          # @attr [true/false] is_recurring
          class PaymentContext < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount_of_money

            attr_accessor :country_code

            attr_accessor :is_installments

            attr_accessor :is_recurring

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['countryCode'] = @country_code unless @country_code.nil?
              hash['isInstallments'] = @is_installments unless @is_installments.nil?
              hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'countryCode'
                @country_code = hash['countryCode']
              end
              if hash.has_key? 'isInstallments'
                @is_installments = hash['isInstallments']
              end
              if hash.has_key? 'isRecurring'
                @is_recurring = hash['isRecurring']
              end
            end
          end
        end
      end
    end
  end
end
