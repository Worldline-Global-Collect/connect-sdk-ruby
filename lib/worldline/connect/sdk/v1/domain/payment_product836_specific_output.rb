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
          # @attr [String] security_indicator
          class PaymentProduct836SpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :security_indicator

            # @return (Hash)
            def to_h
              hash = super
              hash['securityIndicator'] = @security_indicator unless @security_indicator.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'securityIndicator'
                @security_indicator = hash['securityIndicator']
              end
            end
          end
        end
      end
    end
  end
end
