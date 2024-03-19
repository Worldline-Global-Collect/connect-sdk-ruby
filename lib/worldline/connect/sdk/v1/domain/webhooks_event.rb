#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/dispute_response'
require 'worldline/connect/sdk/v1/domain/payment_response'
require 'worldline/connect/sdk/v1/domain/payout_response'
require 'worldline/connect/sdk/v1/domain/refund_response'
require 'worldline/connect/sdk/v1/domain/token_response'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] api_version
          # @attr [String] created
          # @attr [Worldline::Connect::SDK::V1::Domain::DisputeResponse] dispute
          # @attr [String] id
          # @attr [String] merchant_id
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentResponse] payment
          # @attr [Worldline::Connect::SDK::V1::Domain::PayoutResponse] payout
          # @attr [Worldline::Connect::SDK::V1::Domain::RefundResponse] refund
          # @attr [Worldline::Connect::SDK::V1::Domain::TokenResponse] token
          # @attr [String] type
          class WebhooksEvent < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :api_version

            attr_accessor :created

            attr_accessor :dispute

            attr_accessor :id

            attr_accessor :merchant_id

            attr_accessor :payment

            attr_accessor :payout

            attr_accessor :refund

            attr_accessor :token

            attr_accessor :type

            # @return (Hash)
            def to_h
              hash = super
              hash['apiVersion'] = @api_version unless @api_version.nil?
              hash['created'] = @created unless @created.nil?
              hash['dispute'] = @dispute.to_h unless @dispute.nil?
              hash['id'] = @id unless @id.nil?
              hash['merchantId'] = @merchant_id unless @merchant_id.nil?
              hash['payment'] = @payment.to_h unless @payment.nil?
              hash['payout'] = @payout.to_h unless @payout.nil?
              hash['refund'] = @refund.to_h unless @refund.nil?
              hash['token'] = @token.to_h unless @token.nil?
              hash['type'] = @type unless @type.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'apiVersion'
                @api_version = hash['apiVersion']
              end
              if hash.has_key? 'created'
                @created = hash['created']
              end
              if hash.has_key? 'dispute'
                raise TypeError, "value '%s' is not a Hash" % [hash['dispute']] unless hash['dispute'].is_a? Hash
                @dispute = Worldline::Connect::SDK::V1::Domain::DisputeResponse.new_from_hash(hash['dispute'])
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'merchantId'
                @merchant_id = hash['merchantId']
              end
              if hash.has_key? 'payment'
                raise TypeError, "value '%s' is not a Hash" % [hash['payment']] unless hash['payment'].is_a? Hash
                @payment = Worldline::Connect::SDK::V1::Domain::PaymentResponse.new_from_hash(hash['payment'])
              end
              if hash.has_key? 'payout'
                raise TypeError, "value '%s' is not a Hash" % [hash['payout']] unless hash['payout'].is_a? Hash
                @payout = Worldline::Connect::SDK::V1::Domain::PayoutResponse.new_from_hash(hash['payout'])
              end
              if hash.has_key? 'refund'
                raise TypeError, "value '%s' is not a Hash" % [hash['refund']] unless hash['refund'].is_a? Hash
                @refund = Worldline::Connect::SDK::V1::Domain::RefundResponse.new_from_hash(hash['refund'])
              end
              if hash.has_key? 'token'
                raise TypeError, "value '%s' is not a Hash" % [hash['token']] unless hash['token'].is_a? Hash
                @token = Worldline::Connect::SDK::V1::Domain::TokenResponse.new_from_hash(hash['token'])
              end
              if hash.has_key? 'type'
                @type = hash['type']
              end
            end
          end
        end
      end
    end
  end
end
