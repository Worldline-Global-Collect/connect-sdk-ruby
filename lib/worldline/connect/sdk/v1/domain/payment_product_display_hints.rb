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
          # @attr [Integer] display_order
          # @attr [String] label
          # @attr [String] logo
          class PaymentProductDisplayHints < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :display_order

            attr_accessor :label

            attr_accessor :logo

            # @return (Hash)
            def to_h
              hash = super
              hash['displayOrder'] = @display_order unless @display_order.nil?
              hash['label'] = @label unless @label.nil?
              hash['logo'] = @logo unless @logo.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'displayOrder'
                @display_order = hash['displayOrder']
              end
              if hash.has_key? 'label'
                @label = hash['label']
              end
              if hash.has_key? 'logo'
                @logo = hash['logo']
              end
            end
          end
        end
      end
    end
  end
end
