#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/personal_name_risk_assessment'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::PersonalNameRiskAssessment] name
          class PersonalInformationRiskAssessment < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :name

            # @return (Hash)
            def to_h
              hash = super
              hash['name'] = @name.to_h unless @name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'name'
                raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
                @name = Worldline::Connect::SDK::V1::Domain::PersonalNameRiskAssessment.new_from_hash(hash['name'])
              end
            end
          end
        end
      end
    end
  end
end
