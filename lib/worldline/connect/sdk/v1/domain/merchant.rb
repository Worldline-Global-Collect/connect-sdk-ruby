#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/seller'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] configuration_id
          # @attr [String] contact_website_url
          # @attr [Worldline::Connect::SDK::V1::Domain::Seller] seller
          # @attr [String] website_url
          class Merchant < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :configuration_id

            attr_accessor :contact_website_url

            attr_accessor :seller

            attr_accessor :website_url

            # @return (Hash)
            def to_h
              hash = super
              hash['configurationId'] = @configuration_id unless @configuration_id.nil?
              hash['contactWebsiteUrl'] = @contact_website_url unless @contact_website_url.nil?
              hash['seller'] = @seller.to_h unless @seller.nil?
              hash['websiteUrl'] = @website_url unless @website_url.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'configurationId'
                @configuration_id = hash['configurationId']
              end
              if hash.has_key? 'contactWebsiteUrl'
                @contact_website_url = hash['contactWebsiteUrl']
              end
              if hash.has_key? 'seller'
                raise TypeError, "value '%s' is not a Hash" % [hash['seller']] unless hash['seller'].is_a? Hash
                @seller = Worldline::Connect::SDK::V1::Domain::Seller.new_from_hash(hash['seller'])
              end
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
