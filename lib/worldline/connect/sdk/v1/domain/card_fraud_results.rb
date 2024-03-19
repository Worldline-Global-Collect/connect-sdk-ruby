#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/fraud_results'
require 'worldline/connect/sdk/v1/domain/fraud_results_retail_decisions'
require 'worldline/connect/sdk/v1/domain/fraugster_results'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] avs_result
          # @attr [String] cvv_result
          # @attr [Worldline::Connect::SDK::V1::Domain::FraugsterResults] fraugster
          # @attr [Worldline::Connect::SDK::V1::Domain::FraudResultsRetailDecisions] retail_decisions
          class CardFraudResults < Worldline::Connect::SDK::V1::Domain::FraudResults

            attr_accessor :avs_result

            attr_accessor :cvv_result

            attr_accessor :fraugster

            attr_accessor :retail_decisions

            # @return (Hash)
            def to_h
              hash = super
              hash['avsResult'] = @avs_result unless @avs_result.nil?
              hash['cvvResult'] = @cvv_result unless @cvv_result.nil?
              hash['fraugster'] = @fraugster.to_h unless @fraugster.nil?
              hash['retailDecisions'] = @retail_decisions.to_h unless @retail_decisions.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'avsResult'
                @avs_result = hash['avsResult']
              end
              if hash.has_key? 'cvvResult'
                @cvv_result = hash['cvvResult']
              end
              if hash.has_key? 'fraugster'
                raise TypeError, "value '%s' is not a Hash" % [hash['fraugster']] unless hash['fraugster'].is_a? Hash
                @fraugster = Worldline::Connect::SDK::V1::Domain::FraugsterResults.new_from_hash(hash['fraugster'])
              end
              if hash.has_key? 'retailDecisions'
                raise TypeError, "value '%s' is not a Hash" % [hash['retailDecisions']] unless hash['retailDecisions'].is_a? Hash
                @retail_decisions = Worldline::Connect::SDK::V1::Domain::FraudResultsRetailDecisions.new_from_hash(hash['retailDecisions'])
              end
            end
          end
        end
      end
    end
  end
end
