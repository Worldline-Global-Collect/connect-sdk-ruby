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
          # @attr [true/false] address_selection_at_pay_pal
          class AbstractRedirectPaymentProduct840SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :address_selection_at_pay_pal

            # @return (Hash)
            def to_h
              hash = super
              hash['addressSelectionAtPayPal'] = @address_selection_at_pay_pal unless @address_selection_at_pay_pal.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'addressSelectionAtPayPal'
                @address_selection_at_pay_pal = hash['addressSelectionAtPayPal']
              end
            end
          end
        end
      end
    end
  end
end
