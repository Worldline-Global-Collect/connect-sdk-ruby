#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_sepa_direct_debit_payment_product771_specific_input'
require 'worldline/connect/sdk/v1/domain/create_mandate_with_return_url'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] existing_unique_mandate_reference
          # @attr [Worldline::Connect::SDK::V1::Domain::CreateMandateWithReturnUrl] mandate
          class SepaDirectDebitPaymentProduct771SpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractSepaDirectDebitPaymentProduct771SpecificInput

            attr_accessor :existing_unique_mandate_reference

            attr_accessor :mandate

            # @return (Hash)
            def to_h
              hash = super
              hash['existingUniqueMandateReference'] = @existing_unique_mandate_reference unless @existing_unique_mandate_reference.nil?
              hash['mandate'] = @mandate.to_h unless @mandate.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'existingUniqueMandateReference'
                @existing_unique_mandate_reference = hash['existingUniqueMandateReference']
              end
              if hash.has_key? 'mandate'
                raise TypeError, "value '%s' is not a Hash" % [hash['mandate']] unless hash['mandate'].is_a? Hash
                @mandate = Worldline::Connect::SDK::V1::Domain::CreateMandateWithReturnUrl.new_from_hash(hash['mandate'])
              end
            end
          end
        end
      end
    end
  end
end
