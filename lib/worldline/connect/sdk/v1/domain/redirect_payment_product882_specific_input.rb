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
          # @attr [String] issuer_id
          class RedirectPaymentProduct882SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :issuer_id

            # @return (Hash)
            def to_h
              hash = super
              hash['issuerId'] = @issuer_id unless @issuer_id.nil?
              hash
            end

            def from_hash(hash)
              super
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
