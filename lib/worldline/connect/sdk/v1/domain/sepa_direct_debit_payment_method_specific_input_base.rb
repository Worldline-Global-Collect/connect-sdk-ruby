#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_sepa_direct_debit_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/sepa_direct_debit_payment_product771_specific_input_base'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::SepaDirectDebitPaymentProduct771SpecificInputBase] payment_product771_specific_input
          class SepaDirectDebitPaymentMethodSpecificInputBase < Worldline::Connect::SDK::V1::Domain::AbstractSepaDirectDebitPaymentMethodSpecificInput

            attr_accessor :payment_product771_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProduct771SpecificInput'] = @payment_product771_specific_input.to_h unless @payment_product771_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProduct771SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct771SpecificInput']] unless hash['paymentProduct771SpecificInput'].is_a? Hash
                @payment_product771_specific_input = Worldline::Connect::SDK::V1::Domain::SepaDirectDebitPaymentProduct771SpecificInputBase.new_from_hash(hash['paymentProduct771SpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
