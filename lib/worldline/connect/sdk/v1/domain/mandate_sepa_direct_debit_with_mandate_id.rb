#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/mandate_sepa_direct_debit_without_creditor'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] mandate_id
          class MandateSepaDirectDebitWithMandateId < Worldline::Connect::SDK::V1::Domain::MandateSepaDirectDebitWithoutCreditor

            attr_accessor :mandate_id

            # @return (Hash)
            def to_h
              hash = super
              hash['mandateId'] = @mandate_id unless @mandate_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mandateId'
                @mandate_id = hash['mandateId']
              end
            end
          end
        end
      end
    end
  end
end
