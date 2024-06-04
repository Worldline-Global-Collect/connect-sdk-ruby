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
          # @attr [String] return_url
          # @deprecated No replacement
          class CashPaymentProduct1503SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            # @deprecated No replacement, since Boleto Bancario no longer needs a return URL
            attr_accessor :return_url

            # @return (Hash)
            def to_h
              hash = super
              hash['returnUrl'] = @return_url unless @return_url.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'returnUrl'
                @return_url = hash['returnUrl']
              end
            end
          end
        end
      end
    end
  end
end
