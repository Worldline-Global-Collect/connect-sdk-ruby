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
          # @attr [Array<String>] integration_types
          class PaymentProduct863SpecificData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :integration_types

            # @return (Hash)
            def to_h
              hash = super
              hash['integrationTypes'] = @integration_types unless @integration_types.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'integrationTypes'
                raise TypeError, "value '%s' is not an Array" % [hash['integrationTypes']] unless hash['integrationTypes'].is_a? Array
                @integration_types = []
                hash['integrationTypes'].each do |e|
                  @integration_types << e
                end
              end
            end
          end
        end
      end
    end
  end
end
