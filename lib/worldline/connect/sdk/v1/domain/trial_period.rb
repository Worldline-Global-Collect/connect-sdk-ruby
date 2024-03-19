#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Integer] duration
          # @attr [String] interval
          class TrialPeriod < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :duration

            attr_accessor :interval

            # @return (Hash)
            def to_h
              hash = super
              hash['duration'] = @duration unless @duration.nil?
              hash['interval'] = @interval unless @interval.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'duration'
                @duration = hash['duration']
              end
              if hash.has_key? 'interval'
                @interval = hash['interval']
              end
            end
          end
        end
      end
    end
  end
end
