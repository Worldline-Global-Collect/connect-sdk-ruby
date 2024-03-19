#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/create_hosted_mandate_management_request'
require 'worldline/connect/sdk/v1/domain/hosted_mandate_info'
require 'worldline/connect/sdk/v1/domain/hosted_mandate_management_specific_input'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    create_mandate_info = Domain::HostedMandateInfo.new
    create_mandate_info.customer_reference = 'idonthaveareference'
    create_mandate_info.recurrence_type = 'RECURRING'
    create_mandate_info.signature_type = 'UNSIGNED'

    hosted_mandate_management_specific_input = Domain::HostedMandateManagementSpecificInput.new
    hosted_mandate_management_specific_input.locale = 'fr_FR'
    hosted_mandate_management_specific_input.return_url = 'http://www.example.com'
    hosted_mandate_management_specific_input.variant = '101'

    body = Domain::CreateHostedMandateManagementRequest.new
    body.create_mandate_info = create_mandate_info
    body.hosted_mandate_management_specific_input = hosted_mandate_management_specific_input

    response = client.v1.merchant('merchantId').hostedmandatemanagements.create(body)
  end
end

def get_client
  api_key_id = ENV.fetch('connect.api.apiKeyId', 'someKey')
  secret_api_key = ENV.fetch('connect.api.secretApiKey', 'someSecret')
  configuration_file_name = File.join(__FILE__, '..', '..', '..', 'example_configuration.yml')
  yield client = Worldline::Connect::SDK::Factory.create_client_from_file(configuration_file_name, api_key_id, secret_api_key)
ensure
  # Free networking resources when done
  client.close unless client.nil?
end
