#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/creditor'
require 'worldline/connect/sdk/v1/domain/mandate_sepa_direct_debit_with_mandate_id'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::Creditor] creditor
          class MandateSepaDirectDebit < Worldline::Connect::SDK::V1::Domain::MandateSepaDirectDebitWithMandateId

            attr_accessor :creditor

            # @return (Hash)
            def to_h
              hash = super
              hash['creditor'] = @creditor.to_h unless @creditor.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'creditor'
                raise TypeError, "value '%s' is not a Hash" % [hash['creditor']] unless hash['creditor'].is_a? Hash
                @creditor = Worldline::Connect::SDK::V1::Domain::Creditor.new_from_hash(hash['creditor'])
              end
            end
          end
        end
      end
    end
  end
end
