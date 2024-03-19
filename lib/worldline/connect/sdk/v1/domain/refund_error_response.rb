#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/api_error'
require 'worldline/connect/sdk/v1/domain/refund_result'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] error_id
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::APIError>] errors
          # @attr [Worldline::Connect::SDK::V1::Domain::RefundResult] refund_result
          class RefundErrorResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :error_id

            attr_accessor :errors

            attr_accessor :refund_result

            # @return (Hash)
            def to_h
              hash = super
              hash['errorId'] = @error_id unless @error_id.nil?
              hash['errors'] = @errors.collect{|val| val.to_h} unless @errors.nil?
              hash['refundResult'] = @refund_result.to_h unless @refund_result.nil?
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
              if hash.has_key? 'refundResult'
                raise TypeError, "value '%s' is not a Hash" % [hash['refundResult']] unless hash['refundResult'].is_a? Hash
                @refund_result = Worldline::Connect::SDK::V1::Domain::RefundResult.new_from_hash(hash['refundResult'])
              end
            end
          end
        end
      end
    end
  end
end
