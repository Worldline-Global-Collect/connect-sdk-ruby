#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/personal_identification'
require 'worldline/connect/sdk/v1/domain/personal_name'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] date_of_birth
          # @attr [String] gender
          # @attr [Worldline::Connect::SDK::V1::Domain::PersonalIdentification] identification
          # @attr [Worldline::Connect::SDK::V1::Domain::PersonalName] name
          class PersonalInformation < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :date_of_birth

            attr_accessor :gender

            attr_accessor :identification

            attr_accessor :name

            # @return (Hash)
            def to_h
              hash = super
              hash['dateOfBirth'] = @date_of_birth unless @date_of_birth.nil?
              hash['gender'] = @gender unless @gender.nil?
              hash['identification'] = @identification.to_h unless @identification.nil?
              hash['name'] = @name.to_h unless @name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'dateOfBirth'
                @date_of_birth = hash['dateOfBirth']
              end
              if hash.has_key? 'gender'
                @gender = hash['gender']
              end
              if hash.has_key? 'identification'
                raise TypeError, "value '%s' is not a Hash" % [hash['identification']] unless hash['identification'].is_a? Hash
                @identification = Worldline::Connect::SDK::V1::Domain::PersonalIdentification.new_from_hash(hash['identification'])
              end
              if hash.has_key? 'name'
                raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
                @name = Worldline::Connect::SDK::V1::Domain::PersonalName.new_from_hash(hash['name'])
              end
            end
          end
        end
      end
    end
  end
end
