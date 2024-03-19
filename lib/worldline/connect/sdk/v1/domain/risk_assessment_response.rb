#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/result_do_risk_assessment'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::ResultDoRiskAssessment>] results
          class RiskAssessmentResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :results

            # @return (Hash)
            def to_h
              hash = super
              hash['results'] = @results.collect{|val| val.to_h} unless @results.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'results'
                raise TypeError, "value '%s' is not an Array" % [hash['results']] unless hash['results'].is_a? Array
                @results = []
                hash['results'].each do |e|
                  @results << Worldline::Connect::SDK::V1::Domain::ResultDoRiskAssessment.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
