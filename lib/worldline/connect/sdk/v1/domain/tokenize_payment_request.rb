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
          # @attr [String] alias
          class TokenizePaymentRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :alias

            # @return (Hash)
            def to_h
              hash = super
              hash['alias'] = @alias unless @alias.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'alias'
                @alias = hash['alias']
              end
            end
          end
        end
      end
    end
  end
end
