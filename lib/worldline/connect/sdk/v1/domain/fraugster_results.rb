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
          # @attr [String] fraud_investigation_points
          # @attr [Integer] fraud_score
          class FraugsterResults < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :fraud_investigation_points

            attr_accessor :fraud_score

            # @return (Hash)
            def to_h
              hash = super
              hash['fraudInvestigationPoints'] = @fraud_investigation_points unless @fraud_investigation_points.nil?
              hash['fraudScore'] = @fraud_score unless @fraud_score.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'fraudInvestigationPoints'
                @fraud_investigation_points = hash['fraudInvestigationPoints']
              end
              if hash.has_key? 'fraudScore'
                @fraud_score = hash['fraudScore']
              end
            end
          end
        end
      end
    end
  end
end
