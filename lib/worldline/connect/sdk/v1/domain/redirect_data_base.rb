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
          # @attr [String] returnmac
          # @attr [String] redirect_url
          class RedirectDataBase < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :returnmac

            attr_accessor :redirect_url

            # @return (Hash)
            def to_h
              hash = super
              hash['RETURNMAC'] = @returnmac unless @returnmac.nil?
              hash['redirectURL'] = @redirect_url unless @redirect_url.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'RETURNMAC'
                @returnmac = hash['RETURNMAC']
              end
              if hash.has_key? 'redirectURL'
                @redirect_url = hash['redirectURL']
              end
            end
          end
        end
      end
    end
  end
end
