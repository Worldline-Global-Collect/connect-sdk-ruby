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
          # @attr [String] name
          # @attr [String] value
          class AbstractIndicator < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :name

            attr_accessor :value

            # @return (Hash)
            def to_h
              hash = super
              hash['name'] = @name unless @name.nil?
              hash['value'] = @value unless @value.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'name'
                @name = hash['name']
              end
              if hash.has_key? 'value'
                @value = hash['value']
              end
            end
          end
        end
      end
    end
  end
end
