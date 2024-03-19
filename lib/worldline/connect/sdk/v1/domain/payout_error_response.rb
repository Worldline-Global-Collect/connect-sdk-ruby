#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/api_error'
require 'worldline/connect/sdk/v1/domain/payout_result'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] error_id
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::APIError>] errors
          # @attr [Worldline::Connect::SDK::V1::Domain::PayoutResult] payout_result
          class PayoutErrorResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :error_id

            attr_accessor :errors

            attr_accessor :payout_result

            # @return (Hash)
            def to_h
              hash = super
              hash['errorId'] = @error_id unless @error_id.nil?
              hash['errors'] = @errors.collect{|val| val.to_h} unless @errors.nil?
              hash['payoutResult'] = @payout_result.to_h unless @payout_result.nil?
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
              if hash.has_key? 'payoutResult'
                raise TypeError, "value '%s' is not a Hash" % [hash['payoutResult']] unless hash['payoutResult'].is_a? Hash
                @payout_result = Worldline::Connect::SDK::V1::Domain::PayoutResult.new_from_hash(hash['payoutResult'])
              end
            end
          end
        end
      end
    end
  end
end
