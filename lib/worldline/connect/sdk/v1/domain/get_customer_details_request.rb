#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/key_value_pair'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] country_code
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::KeyValuePair>] values
          class GetCustomerDetailsRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :country_code

            attr_accessor :values

            # @return (Hash)
            def to_h
              hash = super
              hash['countryCode'] = @country_code unless @country_code.nil?
              hash['values'] = @values.collect{|val| val.to_h} unless @values.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'countryCode'
                @country_code = hash['countryCode']
              end
              if hash.has_key? 'values'
                raise TypeError, "value '%s' is not an Array" % [hash['values']] unless hash['values'].is_a? Array
                @values = []
                hash['values'].each do |e|
                  @values << Worldline::Connect::SDK::V1::Domain::KeyValuePair.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
