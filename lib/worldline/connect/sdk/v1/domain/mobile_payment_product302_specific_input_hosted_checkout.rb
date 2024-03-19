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
          # @attr [String] business_name
          class MobilePaymentProduct302SpecificInputHostedCheckout < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :business_name

            # @return (Hash)
            def to_h
              hash = super
              hash['businessName'] = @business_name unless @business_name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'businessName'
                @business_name = hash['businessName']
              end
            end
          end
        end
      end
    end
  end
end
