#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/dispute'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::Dispute>] disputes
          class DisputesResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :disputes

            # @return (Hash)
            def to_h
              hash = super
              hash['disputes'] = @disputes.collect{|val| val.to_h} unless @disputes.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'disputes'
                raise TypeError, "value '%s' is not an Array" % [hash['disputes']] unless hash['disputes'].is_a? Array
                @disputes = []
                hash['disputes'].each do |e|
                  @disputes << Worldline::Connect::SDK::V1::Domain::Dispute.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
