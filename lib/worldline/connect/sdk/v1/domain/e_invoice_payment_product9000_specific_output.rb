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
          # @attr [String] installment_id
          class EInvoicePaymentProduct9000SpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :installment_id

            # @return (Hash)
            def to_h
              hash = super
              hash['installmentId'] = @installment_id unless @installment_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'installmentId'
                @installment_id = hash['installmentId']
              end
            end
          end
        end
      end
    end
  end
end
