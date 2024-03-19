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
          # @attr [String] collector_callback
          class DeviceFingerprintRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :collector_callback

            # @return (Hash)
            def to_h
              hash = super
              hash['collectorCallback'] = @collector_callback unless @collector_callback.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'collectorCallback'
                @collector_callback = hash['collectorCallback']
              end
            end
          end
        end
      end
    end
  end
end
