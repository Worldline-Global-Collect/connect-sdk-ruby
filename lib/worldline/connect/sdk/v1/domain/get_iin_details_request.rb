#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payment_context'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] bin
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentContext] payment_context
          class GetIINDetailsRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :bin

            attr_accessor :payment_context

            # @return (Hash)
            def to_h
              hash = super
              hash['bin'] = @bin unless @bin.nil?
              hash['paymentContext'] = @payment_context.to_h unless @payment_context.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bin'
                @bin = hash['bin']
              end
              if hash.has_key? 'paymentContext'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentContext']] unless hash['paymentContext'].is_a? Hash
                @payment_context = Worldline::Connect::SDK::V1::Domain::PaymentContext.new_from_hash(hash['paymentContext'])
              end
            end
          end
        end
      end
    end
  end
end
