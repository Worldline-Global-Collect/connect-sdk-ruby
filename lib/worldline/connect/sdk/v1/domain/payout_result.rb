#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_order_status'
require 'worldline/connect/sdk/v1/domain/order_output'
require 'worldline/connect/sdk/v1/domain/order_status_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::OrderOutput] payout_output
          # @attr [String] status
          # @attr [Worldline::Connect::SDK::V1::Domain::OrderStatusOutput] status_output
          class PayoutResult < Worldline::Connect::SDK::V1::Domain::AbstractOrderStatus

            attr_accessor :payout_output

            attr_accessor :status

            attr_accessor :status_output

            # @return (Hash)
            def to_h
              hash = super
              hash['payoutOutput'] = @payout_output.to_h unless @payout_output.nil?
              hash['status'] = @status unless @status.nil?
              hash['statusOutput'] = @status_output.to_h unless @status_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'payoutOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['payoutOutput']] unless hash['payoutOutput'].is_a? Hash
                @payout_output = Worldline::Connect::SDK::V1::Domain::OrderOutput.new_from_hash(hash['payoutOutput'])
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
              if hash.has_key? 'statusOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']] unless hash['statusOutput'].is_a? Hash
                @status_output = Worldline::Connect::SDK::V1::Domain::OrderStatusOutput.new_from_hash(hash['statusOutput'])
              end
            end
          end
        end
      end
    end
  end
end
