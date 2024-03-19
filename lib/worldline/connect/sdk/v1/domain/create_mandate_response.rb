#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/mandate_merchant_action'
require 'worldline/connect/sdk/v1/domain/mandate_response'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::MandateResponse] mandate
          # @attr [Worldline::Connect::SDK::V1::Domain::MandateMerchantAction] merchant_action
          class CreateMandateResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :mandate

            attr_accessor :merchant_action

            # @return (Hash)
            def to_h
              hash = super
              hash['mandate'] = @mandate.to_h unless @mandate.nil?
              hash['merchantAction'] = @merchant_action.to_h unless @merchant_action.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mandate'
                raise TypeError, "value '%s' is not a Hash" % [hash['mandate']] unless hash['mandate'].is_a? Hash
                @mandate = Worldline::Connect::SDK::V1::Domain::MandateResponse.new_from_hash(hash['mandate'])
              end
              if hash.has_key? 'merchantAction'
                raise TypeError, "value '%s' is not a Hash" % [hash['merchantAction']] unless hash['merchantAction'].is_a? Hash
                @merchant_action = Worldline::Connect::SDK::V1::Domain::MandateMerchantAction.new_from_hash(hash['merchantAction'])
              end
            end
          end
        end
      end
    end
  end
end
