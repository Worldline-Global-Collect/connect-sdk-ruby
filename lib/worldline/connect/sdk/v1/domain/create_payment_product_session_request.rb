#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/mobile_payment_product_session302_specific_input'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::MobilePaymentProductSession302SpecificInput] payment_product_session302_specific_input
          class CreatePaymentProductSessionRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment_product_session302_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProductSession302SpecificInput'] = @payment_product_session302_specific_input.to_h unless @payment_product_session302_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProductSession302SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProductSession302SpecificInput']] unless hash['paymentProductSession302SpecificInput'].is_a? Hash
                @payment_product_session302_specific_input = Worldline::Connect::SDK::V1::Domain::MobilePaymentProductSession302SpecificInput.new_from_hash(hash['paymentProductSession302SpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
