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
          # @attr [true/false] requires_approval
          class AbstractEInvoicePaymentMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractPaymentMethodSpecificInput

            attr_accessor :requires_approval

            # @return (Hash)
            def to_h
              hash = super
              hash['requiresApproval'] = @requires_approval unless @requires_approval.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'requiresApproval'
                @requires_approval = hash['requiresApproval']
              end
            end
          end
        end
      end
    end
  end
end
