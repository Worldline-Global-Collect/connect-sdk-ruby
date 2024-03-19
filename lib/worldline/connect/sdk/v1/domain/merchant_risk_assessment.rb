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
          # @attr [String] website_url
          class MerchantRiskAssessment < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :website_url

            # @return (Hash)
            def to_h
              hash = super
              hash['websiteUrl'] = @website_url unless @website_url.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'websiteUrl'
                @website_url = hash['websiteUrl']
              end
            end
          end
        end
      end
    end
  end
end
