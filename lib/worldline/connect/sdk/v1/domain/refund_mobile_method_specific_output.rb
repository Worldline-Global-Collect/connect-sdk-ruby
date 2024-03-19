#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/refund_method_specific_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] network
          class RefundMobileMethodSpecificOutput < Worldline::Connect::SDK::V1::Domain::RefundMethodSpecificOutput

            attr_accessor :network

            # @return (Hash)
            def to_h
              hash = super
              hash['network'] = @network unless @network.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'network'
                @network = hash['network']
              end
            end
          end
        end
      end
    end
  end
end
