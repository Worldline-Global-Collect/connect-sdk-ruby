#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/label_template_element'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::LabelTemplateElement>] label_template
          # @attr [String] logo
          class AccountOnFileDisplayHints < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :label_template

            attr_accessor :logo

            # @return (Hash)
            def to_h
              hash = super
              hash['labelTemplate'] = @label_template.collect{|val| val.to_h} unless @label_template.nil?
              hash['logo'] = @logo unless @logo.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'labelTemplate'
                raise TypeError, "value '%s' is not an Array" % [hash['labelTemplate']] unless hash['labelTemplate'].is_a? Array
                @label_template = []
                hash['labelTemplate'].each do |e|
                  @label_template << Worldline::Connect::SDK::V1::Domain::LabelTemplateElement.new_from_hash(e)
                end
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
