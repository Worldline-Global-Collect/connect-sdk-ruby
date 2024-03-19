#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_e_invoice_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/e_invoice_payment_product9000_specific_input'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [true/false] accepted_terms_and_conditions
          # @attr [Worldline::Connect::SDK::V1::Domain::EInvoicePaymentProduct9000SpecificInput] payment_product9000_specific_input
          class EInvoicePaymentMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractEInvoicePaymentMethodSpecificInput

            attr_accessor :accepted_terms_and_conditions

            attr_accessor :payment_product9000_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['acceptedTermsAndConditions'] = @accepted_terms_and_conditions unless @accepted_terms_and_conditions.nil?
              hash['paymentProduct9000SpecificInput'] = @payment_product9000_specific_input.to_h unless @payment_product9000_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'acceptedTermsAndConditions'
                @accepted_terms_and_conditions = hash['acceptedTermsAndConditions']
              end
              if hash.has_key? 'paymentProduct9000SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct9000SpecificInput']] unless hash['paymentProduct9000SpecificInput'].is_a? Hash
                @payment_product9000_specific_input = Worldline::Connect::SDK::V1::Domain::EInvoicePaymentProduct9000SpecificInput.new_from_hash(hash['paymentProduct9000SpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
