#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/card'
require 'worldline/connect/sdk/v1/domain/risk_assessment'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::Card] card
          class RiskAssessmentCard < Worldline::Connect::SDK::V1::Domain::RiskAssessment

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
                @card = Worldline::Connect::SDK::V1::Domain::Card.new_from_hash(hash['card'])
              end
            end
          end
        end
      end
    end
  end
end
