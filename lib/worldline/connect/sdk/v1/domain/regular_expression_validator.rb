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
          # @attr [String] regular_expression
          class RegularExpressionValidator < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :regular_expression

            # @return (Hash)
            def to_h
              hash = super
              hash['regularExpression'] = @regular_expression unless @regular_expression.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'regularExpression'
                @regular_expression = hash['regularExpression']
              end
            end
          end
        end
      end
    end
  end
end
