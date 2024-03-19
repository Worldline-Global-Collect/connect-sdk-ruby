#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/created_payment_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::CreatedPaymentOutput] created_payment_output
          # @attr [String] status
          class GetHostedCheckoutResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :created_payment_output

            attr_accessor :status

            # @return (Hash)
            def to_h
              hash = super
              hash['createdPaymentOutput'] = @created_payment_output.to_h unless @created_payment_output.nil?
              hash['status'] = @status unless @status.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'createdPaymentOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['createdPaymentOutput']] unless hash['createdPaymentOutput'].is_a? Hash
                @created_payment_output = Worldline::Connect::SDK::V1::Domain::CreatedPaymentOutput.new_from_hash(hash['createdPaymentOutput'])
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
            end
          end
        end
      end
    end
  end
end
