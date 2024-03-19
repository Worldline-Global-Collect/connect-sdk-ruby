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
          # @attr [String] code
          # @attr [String] description
          # @attr [String] result
          class ValidationBankAccountCheck < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :code

            attr_accessor :description

            attr_accessor :result

            # @return (Hash)
            def to_h
              hash = super
              hash['code'] = @code unless @code.nil?
              hash['description'] = @description unless @description.nil?
              hash['result'] = @result unless @result.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'code'
                @code = hash['code']
              end
              if hash.has_key? 'description'
                @description = hash['description']
              end
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
