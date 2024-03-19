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
          # @attr [String] html_content
          class GetPrivacyPolicyResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :html_content

            # @return (Hash)
            def to_h
              hash = super
              hash['htmlContent'] = @html_content unless @html_content.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'htmlContent'
                @html_content = hash['htmlContent']
              end
            end
          end
        end
      end
    end
  end
end
