#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/capture'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::Capture>] captures
          class CapturesResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :captures

            # @return (Hash)
            def to_h
              hash = super
              hash['captures'] = @captures.collect{|val| val.to_h} unless @captures.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'captures'
                raise TypeError, "value '%s' is not an Array" % [hash['captures']] unless hash['captures'].is_a? Array
                @captures = []
                hash['captures'].each do |e|
                  @captures << Worldline::Connect::SDK::V1::Domain::Capture.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
