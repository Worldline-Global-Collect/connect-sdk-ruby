#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/refund_method_specific_output'
require 'worldline/connect/sdk/v1/domain/refund_payment_product840_specific_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::RefundPaymentProduct840SpecificOutput] payment_product840_specific_output
          class RefundEWalletMethodSpecificOutput < Worldline::Connect::SDK::V1::Domain::RefundMethodSpecificOutput

            attr_accessor :payment_product840_specific_output

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProduct840SpecificOutput'] = @payment_product840_specific_output.to_h unless @payment_product840_specific_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProduct840SpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificOutput']] unless hash['paymentProduct840SpecificOutput'].is_a? Hash
                @payment_product840_specific_output = Worldline::Connect::SDK::V1::Domain::RefundPaymentProduct840SpecificOutput.new_from_hash(hash['paymentProduct840SpecificOutput'])
              end
            end
          end
        end
      end
    end
  end
end
