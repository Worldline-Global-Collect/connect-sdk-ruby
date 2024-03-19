#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/exemption_output'
require 'worldline/connect/sdk/v1/domain/sdk_data_output'
require 'worldline/connect/sdk/v1/domain/three_d_secure_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] acs_transaction_id
          # @attr [String] applied_exemption
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] authentication_amount
          # @attr [String] cavv
          # @attr [String] directory_server_transaction_id
          # @attr [String] eci
          # @attr [Worldline::Connect::SDK::V1::Domain::ExemptionOutput] exemption_output
          # @attr [Integer] scheme_risk_score
          # @attr [Worldline::Connect::SDK::V1::Domain::SdkDataOutput] sdk_data
          # @attr [Worldline::Connect::SDK::V1::Domain::ThreeDSecureData] three_d_secure_data
          # @attr [String] three_d_secure_version
          # @attr [String] three_d_server_transaction_id
          # @attr [String] xid
          class ThreeDSecureResults < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :acs_transaction_id

            attr_accessor :applied_exemption

            attr_accessor :authentication_amount

            attr_accessor :cavv

            attr_accessor :directory_server_transaction_id

            attr_accessor :eci

            attr_accessor :exemption_output

            attr_accessor :scheme_risk_score

            attr_accessor :sdk_data

            attr_accessor :three_d_secure_data

            attr_accessor :three_d_secure_version

            attr_accessor :three_d_server_transaction_id

            attr_accessor :xid

            # @return (Hash)
            def to_h
              hash = super
              hash['acsTransactionId'] = @acs_transaction_id unless @acs_transaction_id.nil?
              hash['appliedExemption'] = @applied_exemption unless @applied_exemption.nil?
              hash['authenticationAmount'] = @authentication_amount.to_h unless @authentication_amount.nil?
              hash['cavv'] = @cavv unless @cavv.nil?
              hash['directoryServerTransactionId'] = @directory_server_transaction_id unless @directory_server_transaction_id.nil?
              hash['eci'] = @eci unless @eci.nil?
              hash['exemptionOutput'] = @exemption_output.to_h unless @exemption_output.nil?
              hash['schemeRiskScore'] = @scheme_risk_score unless @scheme_risk_score.nil?
              hash['sdkData'] = @sdk_data.to_h unless @sdk_data.nil?
              hash['threeDSecureData'] = @three_d_secure_data.to_h unless @three_d_secure_data.nil?
              hash['threeDSecureVersion'] = @three_d_secure_version unless @three_d_secure_version.nil?
              hash['threeDServerTransactionId'] = @three_d_server_transaction_id unless @three_d_server_transaction_id.nil?
              hash['xid'] = @xid unless @xid.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'acsTransactionId'
                @acs_transaction_id = hash['acsTransactionId']
              end
              if hash.has_key? 'appliedExemption'
                @applied_exemption = hash['appliedExemption']
              end
              if hash.has_key? 'authenticationAmount'
                raise TypeError, "value '%s' is not a Hash" % [hash['authenticationAmount']] unless hash['authenticationAmount'].is_a? Hash
                @authentication_amount = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['authenticationAmount'])
              end
              if hash.has_key? 'cavv'
                @cavv = hash['cavv']
              end
              if hash.has_key? 'directoryServerTransactionId'
                @directory_server_transaction_id = hash['directoryServerTransactionId']
              end
              if hash.has_key? 'eci'
                @eci = hash['eci']
              end
              if hash.has_key? 'exemptionOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['exemptionOutput']] unless hash['exemptionOutput'].is_a? Hash
                @exemption_output = Worldline::Connect::SDK::V1::Domain::ExemptionOutput.new_from_hash(hash['exemptionOutput'])
              end
              if hash.has_key? 'schemeRiskScore'
                @scheme_risk_score = hash['schemeRiskScore']
              end
              if hash.has_key? 'sdkData'
                raise TypeError, "value '%s' is not a Hash" % [hash['sdkData']] unless hash['sdkData'].is_a? Hash
                @sdk_data = Worldline::Connect::SDK::V1::Domain::SdkDataOutput.new_from_hash(hash['sdkData'])
              end
              if hash.has_key? 'threeDSecureData'
                raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecureData']] unless hash['threeDSecureData'].is_a? Hash
                @three_d_secure_data = Worldline::Connect::SDK::V1::Domain::ThreeDSecureData.new_from_hash(hash['threeDSecureData'])
              end
              if hash.has_key? 'threeDSecureVersion'
                @three_d_secure_version = hash['threeDSecureVersion']
              end
              if hash.has_key? 'threeDServerTransactionId'
                @three_d_server_transaction_id = hash['threeDServerTransactionId']
              end
              if hash.has_key? 'xid'
                @xid = hash['xid']
              end
            end
          end
        end
      end
    end
  end
end
