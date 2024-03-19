#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payout_result'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Integer] limit
          # @attr [Integer] offset
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::PayoutResult>] payouts
          # @attr [Integer] total_count
          class FindPayoutsResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :limit

            attr_accessor :offset

            attr_accessor :payouts

            attr_accessor :total_count

            # @return (Hash)
            def to_h
              hash = super
              hash['limit'] = @limit unless @limit.nil?
              hash['offset'] = @offset unless @offset.nil?
              hash['payouts'] = @payouts.collect{|val| val.to_h} unless @payouts.nil?
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
              if hash.has_key? 'payouts'
                raise TypeError, "value '%s' is not an Array" % [hash['payouts']] unless hash['payouts'].is_a? Array
                @payouts = []
                hash['payouts'].each do |e|
                  @payouts << Worldline::Connect::SDK::V1::Domain::PayoutResult.new_from_hash(e)
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
