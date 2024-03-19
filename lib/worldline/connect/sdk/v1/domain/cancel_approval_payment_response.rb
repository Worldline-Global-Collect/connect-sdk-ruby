#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payment'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::Payment] payment
          class CancelApprovalPaymentResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment

            # @return (Hash)
            def to_h
              hash = super
              hash['payment'] = @payment.to_h unless @payment.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'payment'
                raise TypeError, "value '%s' is not a Hash" % [hash['payment']] unless hash['payment'].is_a? Hash
                @payment = Worldline::Connect::SDK::V1::Domain::Payment.new_from_hash(hash['payment'])
              end
            end
          end
        end
      end
    end
  end
end
