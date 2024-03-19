#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/create_mandate_base'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] return_url
          class CreateMandateWithReturnUrl < Worldline::Connect::SDK::V1::Domain::CreateMandateBase

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
