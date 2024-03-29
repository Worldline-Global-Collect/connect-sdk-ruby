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
          # @attr [String] id_issuing_country_code
          # @attr [String] id_type
          # @attr [String] id_value
          class PersonalIdentification < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :id_issuing_country_code

            attr_accessor :id_type

            attr_accessor :id_value

            # @return (Hash)
            def to_h
              hash = super
              hash['idIssuingCountryCode'] = @id_issuing_country_code unless @id_issuing_country_code.nil?
              hash['idType'] = @id_type unless @id_type.nil?
              hash['idValue'] = @id_value unless @id_value.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'idIssuingCountryCode'
                @id_issuing_country_code = hash['idIssuingCountryCode']
              end
              if hash.has_key? 'idType'
                @id_type = hash['idType']
              end
              if hash.has_key? 'idValue'
                @id_value = hash['idValue']
              end
            end
          end
        end
      end
    end
  end
end
