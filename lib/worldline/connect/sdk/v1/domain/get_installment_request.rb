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
          # @attr [String] bin
          # @attr [String] country_code
          # @attr [Integer] payment_product_id
          class GetInstallmentRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount_of_money

            attr_accessor :bin

            attr_accessor :country_code

            attr_accessor :payment_product_id

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['bin'] = @bin unless @bin.nil?
              hash['countryCode'] = @country_code unless @country_code.nil?
              hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'bin'
                @bin = hash['bin']
              end
              if hash.has_key? 'countryCode'
                @country_code = hash['countryCode']
              end
              if hash.has_key? 'paymentProductId'
                @payment_product_id = hash['paymentProductId']
              end
            end
          end
        end
      end
    end
  end
end
