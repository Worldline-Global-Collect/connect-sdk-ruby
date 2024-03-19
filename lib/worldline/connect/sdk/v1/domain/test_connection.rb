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
          # @attr [String] result
          class TestConnection < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :result

            # @return (Hash)
            def to_h
              hash = super
              hash['result'] = @result unless @result.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'result'
                @result = hash['result']
              end
            end
          end
        end
      end
    end
  end
end
