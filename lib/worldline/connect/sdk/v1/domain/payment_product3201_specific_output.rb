#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/card_essentials'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::CardEssentials] card
          class PaymentProduct3201SpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :card

            # @return (Hash)
            def to_h
              hash = super
              hash['card'] = @card.to_h unless @card.nil?
              hash
            end

            def from_hash(hash)
              super
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
