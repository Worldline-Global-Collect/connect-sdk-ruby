#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/mandate_response'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::MandateResponse] mandate
          class GetMandateResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :mandate

            # @return (Hash)
            def to_h
              hash = super
              hash['mandate'] = @mandate.to_h unless @mandate.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mandate'
                raise TypeError, "value '%s' is not a Hash" % [hash['mandate']] unless hash['mandate'].is_a? Hash
                @mandate = Worldline::Connect::SDK::V1::Domain::MandateResponse.new_from_hash(hash['mandate'])
              end
            end
          end
        end
      end
    end
  end
end
