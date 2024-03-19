#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/refund_result'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::RefundResult>] refunds
          class RefundsResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :refunds

            # @return (Hash)
            def to_h
              hash = super
              hash['refunds'] = @refunds.collect{|val| val.to_h} unless @refunds.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'refunds'
                raise TypeError, "value '%s' is not an Array" % [hash['refunds']] unless hash['refunds'].is_a? Array
                @refunds = []
                hash['refunds'].each do |e|
                  @refunds << Worldline::Connect::SDK::V1::Domain::RefundResult.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
