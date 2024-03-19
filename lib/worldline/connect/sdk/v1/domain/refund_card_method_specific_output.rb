#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/card_essentials'
require 'worldline/connect/sdk/v1/domain/refund_method_specific_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] authorisation_code
          # @attr [Worldline::Connect::SDK::V1::Domain::CardEssentials] card
          class RefundCardMethodSpecificOutput < Worldline::Connect::SDK::V1::Domain::RefundMethodSpecificOutput

            attr_accessor :authorisation_code

            attr_accessor :card

            # @return (Hash)
            def to_h
              hash = super
              hash['authorisationCode'] = @authorisation_code unless @authorisation_code.nil?
              hash['card'] = @card.to_h unless @card.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'authorisationCode'
                @authorisation_code = hash['authorisationCode']
              end
              if hash.has_key? 'card'
                raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
                @card = Worldline::Connect::SDK::V1::Domain::CardEssentials.new_from_hash(hash['card'])
              end
            end
          end
        end
      end
    end
  end
end
