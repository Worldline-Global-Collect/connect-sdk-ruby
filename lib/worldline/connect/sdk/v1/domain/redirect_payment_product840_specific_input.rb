#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_redirect_payment_product840_specific_input'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] custom
          # @attr [true/false] is_shortcut
          class RedirectPaymentProduct840SpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractRedirectPaymentProduct840SpecificInput

            # @deprecated Use Order.references.descriptor instead
            attr_accessor :custom

            attr_accessor :is_shortcut

            # @return (Hash)
            def to_h
              hash = super
              hash['custom'] = @custom unless @custom.nil?
              hash['isShortcut'] = @is_shortcut unless @is_shortcut.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'custom'
                @custom = hash['custom']
              end
              if hash.has_key? 'isShortcut'
                @is_shortcut = hash['isShortcut']
              end
            end
          end
        end
      end
    end
  end
end
