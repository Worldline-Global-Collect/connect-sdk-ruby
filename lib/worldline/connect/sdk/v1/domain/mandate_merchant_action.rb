#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/mandate_redirect_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] action_type
          # @attr [Worldline::Connect::SDK::V1::Domain::MandateRedirectData] redirect_data
          class MandateMerchantAction < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :action_type

            attr_accessor :redirect_data

            # @return (Hash)
            def to_h
              hash = super
              hash['actionType'] = @action_type unless @action_type.nil?
              hash['redirectData'] = @redirect_data.to_h unless @redirect_data.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'actionType'
                @action_type = hash['actionType']
              end
              if hash.has_key? 'redirectData'
                raise TypeError, "value '%s' is not a Hash" % [hash['redirectData']] unless hash['redirectData'].is_a? Hash
                @redirect_data = Worldline::Connect::SDK::V1::Domain::MandateRedirectData.new_from_hash(hash['redirectData'])
              end
            end
          end
        end
      end
    end
  end
end
