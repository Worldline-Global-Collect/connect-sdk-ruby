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
          # @attr [String] image
          # @attr [String] label
          class PaymentProductFieldTooltip < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :image

            attr_accessor :label

            # @return (Hash)
            def to_h
              hash = super
              hash['image'] = @image unless @image.nil?
              hash['label'] = @label unless @label.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'image'
                @image = hash['image']
              end
              if hash.has_key? 'label'
                @label = hash['label']
              end
            end
          end
        end
      end
    end
  end
end
