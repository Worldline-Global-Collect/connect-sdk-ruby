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
          # @attr [String] mandate_reference
          class AbstractSepaDirectDebitPaymentProduct771SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            #
            # @deprecated Use existingUniqueMandateReference or mandate.uniqueMandateReference instead
            attr_accessor :mandate_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['mandateReference'] = @mandate_reference unless @mandate_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mandateReference'
                @mandate_reference = hash['mandateReference']
              end
            end
          end
        end
      end
    end
  end
end
