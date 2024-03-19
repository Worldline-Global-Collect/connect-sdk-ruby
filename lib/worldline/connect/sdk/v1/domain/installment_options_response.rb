#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/installment_options'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::InstallmentOptions>] installment_options
          class InstallmentOptionsResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :installment_options

            # @return (Hash)
            def to_h
              hash = super
              hash['installmentOptions'] = @installment_options.collect{|val| val.to_h} unless @installment_options.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'installmentOptions'
                raise TypeError, "value '%s' is not an Array" % [hash['installmentOptions']] unless hash['installmentOptions'].is_a? Array
                @installment_options = []
                hash['installmentOptions'].each do |e|
                  @installment_options << Worldline::Connect::SDK::V1::Domain::InstallmentOptions.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
