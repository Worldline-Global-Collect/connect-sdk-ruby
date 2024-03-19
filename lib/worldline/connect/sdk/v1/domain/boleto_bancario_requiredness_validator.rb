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
          # @attr [Integer] fiscal_number_length
          class BoletoBancarioRequirednessValidator < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :fiscal_number_length

            # @return (Hash)
            def to_h
              hash = super
              hash['fiscalNumberLength'] = @fiscal_number_length unless @fiscal_number_length.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'fiscalNumberLength'
                @fiscal_number_length = hash['fiscalNumberLength']
              end
            end
          end
        end
      end
    end
  end
end
