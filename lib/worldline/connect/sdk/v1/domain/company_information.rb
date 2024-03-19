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
          # @attr [String] vat_number
          class CompanyInformation < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :name

            attr_accessor :vat_number

            # @return (Hash)
            def to_h
              hash = super
              hash['name'] = @name unless @name.nil?
              hash['vatNumber'] = @vat_number unless @vat_number.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'name'
                @name = hash['name']
              end
              if hash.has_key? 'vatNumber'
                @vat_number = hash['vatNumber']
              end
            end
          end
        end
      end
    end
  end
end
