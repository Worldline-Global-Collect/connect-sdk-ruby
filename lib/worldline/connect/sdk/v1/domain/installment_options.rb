#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/installment_display_hints'
require 'worldline/connect/sdk/v1/domain/installments'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::InstallmentDisplayHints] display_hints
          # @attr [String] id
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::Installments>] installment_plans
          class InstallmentOptions < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :display_hints

            attr_accessor :id

            attr_accessor :installment_plans

            # @return (Hash)
            def to_h
              hash = super
              hash['displayHints'] = @display_hints.to_h unless @display_hints.nil?
              hash['id'] = @id unless @id.nil?
              hash['installmentPlans'] = @installment_plans.collect{|val| val.to_h} unless @installment_plans.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'displayHints'
                raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']] unless hash['displayHints'].is_a? Hash
                @display_hints = Worldline::Connect::SDK::V1::Domain::InstallmentDisplayHints.new_from_hash(hash['displayHints'])
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'installmentPlans'
                raise TypeError, "value '%s' is not an Array" % [hash['installmentPlans']] unless hash['installmentPlans'].is_a? Array
                @installment_plans = []
                hash['installmentPlans'].each do |e|
                  @installment_plans << Worldline::Connect::SDK::V1::Domain::Installments.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
