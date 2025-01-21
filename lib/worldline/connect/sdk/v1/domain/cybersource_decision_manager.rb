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
          # @attr [String] clause_name
          # @attr [Integer] fraud_score
          # @attr [String] policy_applied
          # @attr [Array<String>] reason_codes
          class CybersourceDecisionManager < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :clause_name

            attr_accessor :fraud_score

            attr_accessor :policy_applied

            attr_accessor :reason_codes

            # @return (Hash)
            def to_h
              hash = super
              hash['clauseName'] = @clause_name unless @clause_name.nil?
              hash['fraudScore'] = @fraud_score unless @fraud_score.nil?
              hash['policyApplied'] = @policy_applied unless @policy_applied.nil?
              hash['reasonCodes'] = @reason_codes unless @reason_codes.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'clauseName'
                @clause_name = hash['clauseName']
              end
              if hash.has_key? 'fraudScore'
                @fraud_score = hash['fraudScore']
              end
              if hash.has_key? 'policyApplied'
                @policy_applied = hash['policyApplied']
              end
              if hash.has_key? 'reasonCodes'
                raise TypeError, "value '%s' is not an Array" % [hash['reasonCodes']] unless hash['reasonCodes'].is_a? Array
                @reason_codes = []
                hash['reasonCodes'].each do |e|
                  @reason_codes << e
                end
              end
            end
          end
        end
      end
    end
  end
end
