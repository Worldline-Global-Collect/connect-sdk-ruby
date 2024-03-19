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
          # @attr [String] id
          class AbstractOrderStatus < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :id

            # @return (Hash)
            def to_h
              hash = super
              hash['id'] = @id unless @id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'id'
                @id = hash['id']
              end
            end
          end
        end
      end
    end
  end
end
