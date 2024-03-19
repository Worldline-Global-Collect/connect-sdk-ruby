#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/mobile_payment_product_session302_specific_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::MobilePaymentProductSession302SpecificOutput] payment_product_session302_specific_output
          class CreatePaymentProductSessionResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment_product_session302_specific_output

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProductSession302SpecificOutput'] = @payment_product_session302_specific_output.to_h unless @payment_product_session302_specific_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProductSession302SpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProductSession302SpecificOutput']] unless hash['paymentProductSession302SpecificOutput'].is_a? Hash
                @payment_product_session302_specific_output = Worldline::Connect::SDK::V1::Domain::MobilePaymentProductSession302SpecificOutput.new_from_hash(hash['paymentProductSession302SpecificOutput'])
              end
            end
          end
        end
      end
    end
  end
end
