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
          # @attr [Integer] limit
          # @attr [Integer] offset
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::Payment>] payments
          # @attr [Integer] total_count
          class FindPaymentsResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :limit

            attr_accessor :offset

            attr_accessor :payments

            attr_accessor :total_count

            # @return (Hash)
            def to_h
              hash = super
              hash['limit'] = @limit unless @limit.nil?
              hash['offset'] = @offset unless @offset.nil?
              hash['payments'] = @payments.collect{|val| val.to_h} unless @payments.nil?
              hash['totalCount'] = @total_count unless @total_count.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'limit'
                @limit = hash['limit']
              end
              if hash.has_key? 'offset'
                @offset = hash['offset']
              end
              if hash.has_key? 'payments'
                raise TypeError, "value '%s' is not an Array" % [hash['payments']] unless hash['payments'].is_a? Array
                @payments = []
                hash['payments'].each do |e|
                  @payments << Worldline::Connect::SDK::V1::Domain::Payment.new_from_hash(e)
                end
              end
              if hash.has_key? 'totalCount'
                @total_count = hash['totalCount']
              end
            end
          end
        end
      end
    end
  end
end
