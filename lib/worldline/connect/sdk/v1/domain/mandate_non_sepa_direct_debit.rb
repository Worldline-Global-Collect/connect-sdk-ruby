#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/token_non_sepa_direct_debit_payment_product705_specific_data'
require 'worldline/connect/sdk/v1/domain/token_non_sepa_direct_debit_payment_product730_specific_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::TokenNonSepaDirectDebitPaymentProduct705SpecificData] payment_product705_specific_data
          # @attr [Worldline::Connect::SDK::V1::Domain::TokenNonSepaDirectDebitPaymentProduct730SpecificData] payment_product730_specific_data
          class MandateNonSepaDirectDebit < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment_product705_specific_data

            attr_accessor :payment_product730_specific_data

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProduct705SpecificData'] = @payment_product705_specific_data.to_h unless @payment_product705_specific_data.nil?
              hash['paymentProduct730SpecificData'] = @payment_product730_specific_data.to_h unless @payment_product730_specific_data.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProduct705SpecificData'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct705SpecificData']] unless hash['paymentProduct705SpecificData'].is_a? Hash
                @payment_product705_specific_data = Worldline::Connect::SDK::V1::Domain::TokenNonSepaDirectDebitPaymentProduct705SpecificData.new_from_hash(hash['paymentProduct705SpecificData'])
              end
              if hash.has_key? 'paymentProduct730SpecificData'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct730SpecificData']] unless hash['paymentProduct730SpecificData'].is_a? Hash
                @payment_product730_specific_data = Worldline::Connect::SDK::V1::Domain::TokenNonSepaDirectDebitPaymentProduct730SpecificData.new_from_hash(hash['paymentProduct730SpecificData'])
              end
            end
          end
        end
      end
    end
  end
end
