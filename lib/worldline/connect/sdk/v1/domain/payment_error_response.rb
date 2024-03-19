#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/api_error'
require 'worldline/connect/sdk/v1/domain/create_payment_result'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] error_id
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::APIError>] errors
          # @attr [Worldline::Connect::SDK::V1::Domain::CreatePaymentResult] payment_result
          class PaymentErrorResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :error_id

            attr_accessor :errors

            attr_accessor :payment_result

            # @return (Hash)
            def to_h
              hash = super
              hash['errorId'] = @error_id unless @error_id.nil?
              hash['errors'] = @errors.collect{|val| val.to_h} unless @errors.nil?
              hash['paymentResult'] = @payment_result.to_h unless @payment_result.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'errorId'
                @error_id = hash['errorId']
              end
              if hash.has_key? 'errors'
                raise TypeError, "value '%s' is not an Array" % [hash['errors']] unless hash['errors'].is_a? Array
                @errors = []
                hash['errors'].each do |e|
                  @errors << Worldline::Connect::SDK::V1::Domain::APIError.new_from_hash(e)
                end
              end
              if hash.has_key? 'paymentResult'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentResult']] unless hash['paymentResult'].is_a? Hash
                @payment_result = Worldline::Connect::SDK::V1::Domain::CreatePaymentResult.new_from_hash(hash['paymentResult'])
              end
            end
          end
        end
      end
    end
  end
end
