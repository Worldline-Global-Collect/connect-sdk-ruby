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
          # @attr [Integer] max_length
          # @attr [Integer] min_length
          class LengthValidator < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :max_length

            attr_accessor :min_length

            # @return (Hash)
            def to_h
              hash = super
              hash['maxLength'] = @max_length unless @max_length.nil?
              hash['minLength'] = @min_length unless @min_length.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'maxLength'
                @max_length = hash['maxLength']
              end
              if hash.has_key? 'minLength'
                @min_length = hash['minLength']
              end
            end
          end
        end
      end
    end
  end
end
