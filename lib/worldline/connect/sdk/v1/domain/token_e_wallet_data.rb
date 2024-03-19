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
          # @attr [String] billing_agreement_id
          class TokenEWalletData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :billing_agreement_id

            # @return (Hash)
            def to_h
              hash = super
              hash['billingAgreementId'] = @billing_agreement_id unless @billing_agreement_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'billingAgreementId'
                @billing_agreement_id = hash['billingAgreementId']
              end
            end
          end
        end
      end
    end
  end
end
