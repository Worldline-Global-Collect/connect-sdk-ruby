#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_payment_method_specific_input'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] additional_reference
          class InvoicePaymentMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractPaymentMethodSpecificInput

            attr_accessor :additional_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['additionalReference'] = @additional_reference unless @additional_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'additionalReference'
                @additional_reference = hash['additionalReference']
              end
            end
          end
        end
      end
    end
  end
end
