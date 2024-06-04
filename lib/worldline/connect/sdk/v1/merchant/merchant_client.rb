#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/api_resource'
require 'worldline/connect/sdk/v1/merchant/captures/captures_client'
require 'worldline/connect/sdk/v1/merchant/disputes/disputes_client'
require 'worldline/connect/sdk/v1/merchant/files/files_client'
require 'worldline/connect/sdk/v1/merchant/hostedcheckouts/hostedcheckouts_client'
require 'worldline/connect/sdk/v1/merchant/hostedmandatemanagements/hostedmandatemanagements_client'
require 'worldline/connect/sdk/v1/merchant/installments/installments_client'
require 'worldline/connect/sdk/v1/merchant/mandates/mandates_client'
require 'worldline/connect/sdk/v1/merchant/payments/payments_client'
require 'worldline/connect/sdk/v1/merchant/payouts/payouts_client'
require 'worldline/connect/sdk/v1/merchant/productgroups/productgroups_client'
require 'worldline/connect/sdk/v1/merchant/products/products_client'
require 'worldline/connect/sdk/v1/merchant/refunds/refunds_client'
require 'worldline/connect/sdk/v1/merchant/riskassessments/riskassessments_client'
require 'worldline/connect/sdk/v1/merchant/services/services_client'
require 'worldline/connect/sdk/v1/merchant/sessions/sessions_client'
require 'worldline/connect/sdk/v1/merchant/tokens/tokens_client'

module Worldline
  module Connect
    module SDK
      module V1
        module Merchant
          # Merchant client. Thread-safe.
          class MerchantClient < Worldline::Connect::SDK::ApiResource

            # @param parent       [Worldline::Connect::SDK::ApiResource]
            # @param path_context [Hash, nil]
            def initialize(parent, path_context)
              super(parent: parent, path_context: path_context)
            end

            # Resource /!{merchantId}/hostedcheckouts
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Hostedcheckouts::HostedcheckoutsClient]
            def hostedcheckouts
              Worldline::Connect::SDK::V1::Merchant::Hostedcheckouts::HostedcheckoutsClient.new(self, nil)
            end

            # Resource /!{merchantId}/hostedmandatemanagements
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Hostedmandatemanagements::HostedmandatemanagementsClient]
            def hostedmandatemanagements
              Worldline::Connect::SDK::V1::Merchant::Hostedmandatemanagements::HostedmandatemanagementsClient.new(self, nil)
            end

            # Resource /!{merchantId}/payments
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Payments::PaymentsClient]
            def payments
              Worldline::Connect::SDK::V1::Merchant::Payments::PaymentsClient.new(self, nil)
            end

            # Resource /!{merchantId}/captures
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Captures::CapturesClient]
            def captures
              Worldline::Connect::SDK::V1::Merchant::Captures::CapturesClient.new(self, nil)
            end

            # Resource /!{merchantId}/refunds
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Refunds::RefundsClient]
            def refunds
              Worldline::Connect::SDK::V1::Merchant::Refunds::RefundsClient.new(self, nil)
            end

            # Resource /!{merchantId}/disputes
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Disputes::DisputesClient]
            def disputes
              Worldline::Connect::SDK::V1::Merchant::Disputes::DisputesClient.new(self, nil)
            end

            # Resource /!{merchantId}/payouts
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Payouts::PayoutsClient]
            def payouts
              Worldline::Connect::SDK::V1::Merchant::Payouts::PayoutsClient.new(self, nil)
            end

            # Resource /!{merchantId}/productgroups
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Productgroups::ProductgroupsClient]
            def productgroups
              Worldline::Connect::SDK::V1::Merchant::Productgroups::ProductgroupsClient.new(self, nil)
            end

            # Resource /!{merchantId}/products
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Products::ProductsClient]
            def products
              Worldline::Connect::SDK::V1::Merchant::Products::ProductsClient.new(self, nil)
            end

            # Resource /!{merchantId}/riskassessments
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Riskassessments::RiskassessmentsClient]
            def riskassessments
              Worldline::Connect::SDK::V1::Merchant::Riskassessments::RiskassessmentsClient.new(self, nil)
            end

            # Resource /!{merchantId}/services
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Services::ServicesClient]
            def services
              Worldline::Connect::SDK::V1::Merchant::Services::ServicesClient.new(self, nil)
            end

            # Resource /!{merchantId}/tokens
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Tokens::TokensClient]
            def tokens
              Worldline::Connect::SDK::V1::Merchant::Tokens::TokensClient.new(self, nil)
            end

            # Resource /!{merchantId}/mandates
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Mandates::MandatesClient]
            def mandates
              Worldline::Connect::SDK::V1::Merchant::Mandates::MandatesClient.new(self, nil)
            end

            # Resource /!{merchantId}/sessions
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Sessions::SessionsClient]
            def sessions
              Worldline::Connect::SDK::V1::Merchant::Sessions::SessionsClient.new(self, nil)
            end

            # Resource /!{merchantId}/installments
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Installments::InstallmentsClient]
            def installments
              Worldline::Connect::SDK::V1::Merchant::Installments::InstallmentsClient.new(self, nil)
            end

            # Resource /!{merchantId}/files
            #
            # @return [Worldline::Connect::SDK::V1::Merchant::Files::FilesClient]
            def files
              Worldline::Connect::SDK::V1::Merchant::Files::FilesClient.new(self, nil)
            end
          end
        end
      end
    end
  end
end
