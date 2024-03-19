#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_redirect_payment_product4101_specific_input'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] display_name
          class RedirectPaymentProduct4101SpecificInputBase < Worldline::Connect::SDK::V1::Domain::AbstractRedirectPaymentProduct4101SpecificInput

            attr_accessor :display_name

            # @return (Hash)
            def to_h
              hash = super
              hash['displayName'] = @display_name unless @display_name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'displayName'
                @display_name = hash['displayName']
              end
            end
          end
        end
      end
    end
  end
end
