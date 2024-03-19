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
          # @attr [true/false] mobile_device
          class RedirectPaymentProduct861SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :mobile_device

            # @return (Hash)
            def to_h
              hash = super
              hash['mobileDevice'] = @mobile_device unless @mobile_device.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mobileDevice'
                @mobile_device = hash['mobileDevice']
              end
            end
          end
        end
      end
    end
  end
end
