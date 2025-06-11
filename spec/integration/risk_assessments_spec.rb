require 'spec_helper'
require 'integration_setup'
require 'webmock/rspec'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/bank_account_bban'
require 'worldline/connect/sdk/v1/domain/customer_risk_assessment'
require 'worldline/connect/sdk/v1/domain/order_risk_assessment'
require 'worldline/connect/sdk/v1/domain/risk_assessment_bank_account'

describe 'RiskAssessments' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'can let the Worldline Global Collect platform assess risks' do
    skip 'Risk assessments are not available for pre-prod sandbox accounts'

    bank_account_bban = Worldline::Connect::SDK::V1::Domain::BankAccountBban.new
    bank_account_bban.country_code = 'DE'
    bank_account_bban.account_number = '0532013000'
    bank_account_bban.bank_code = '37040044'
    amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new
    amount_of_money.amount = 100
    amount_of_money.currency_code = 'EUR'
    customer = Worldline::Connect::SDK::V1::Domain::CustomerRiskAssessment.new
    customer.locale = 'en_GB'
    order = Worldline::Connect::SDK::V1::Domain::OrderRiskAssessment.new
    order.amount_of_money = amount_of_money
    order.customer = customer
    body = Worldline::Connect::SDK::V1::Domain::RiskAssessmentBankAccount.new
    body.order = order
    body.bank_account_bban = bank_account_bban

    Integration.init_client(false) do |client|
      response = client.v1.merchant(Integration::MERCHANT_ID).riskassessments.bankaccounts(body)
      expect(response.results.length).to be > 0
    end
  end
end
