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
          # @attr [String] expiration_period
          # @attr [String] issuer_id
          class RedirectPaymentProduct809SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            # @deprecated Use RedirectPaymentMethodSpecificInput.expirationPeriod instead
            attr_accessor :expiration_period

            attr_accessor :issuer_id

            # @return (Hash)
            def to_h
              hash = super
              hash['expirationPeriod'] = @expiration_period unless @expiration_period.nil?
              hash['issuerId'] = @issuer_id unless @issuer_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'expirationPeriod'
                @expiration_period = hash['expirationPeriod']
              end
              if hash.has_key? 'issuerId'
                @issuer_id = hash['issuerId']
              end
            end
          end
        end
      end
    end
  end
end
