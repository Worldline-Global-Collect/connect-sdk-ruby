#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/api_exception'
require 'worldline/connect/sdk/v1/declined_payment_exception'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/address_personal'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/browser_data'
require 'worldline/connect/sdk/v1/domain/card'
require 'worldline/connect/sdk/v1/domain/card_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/company_information'
require 'worldline/connect/sdk/v1/domain/contact_details'
require 'worldline/connect/sdk/v1/domain/create_payment_request'
require 'worldline/connect/sdk/v1/domain/customer'
require 'worldline/connect/sdk/v1/domain/customer_device'
require 'worldline/connect/sdk/v1/domain/line_item'
require 'worldline/connect/sdk/v1/domain/line_item_invoice_data'
require 'worldline/connect/sdk/v1/domain/order'
require 'worldline/connect/sdk/v1/domain/order_invoice_data'
require 'worldline/connect/sdk/v1/domain/order_references'
require 'worldline/connect/sdk/v1/domain/personal_information'
require 'worldline/connect/sdk/v1/domain/personal_name'
require 'worldline/connect/sdk/v1/domain/redirection_data'
require 'worldline/connect/sdk/v1/domain/shipping'
require 'worldline/connect/sdk/v1/domain/shopping_cart'
require 'worldline/connect/sdk/v1/domain/three_d_secure'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    card = Domain::Card.new
    card.card_number = '4567350000427977'
    card.cardholder_name = 'Wile E. Coyote'
    card.cvv = '123'
    card.expiry_date = '1299'

    authentication_amount = Domain::AmountOfMoney.new
    authentication_amount.amount = 2980
    authentication_amount.currency_code = 'EUR'

    redirection_data = Domain::RedirectionData.new
    redirection_data.return_url = 'https://hostname.myownwebsite.url'

    three_d_secure = Domain::ThreeDSecure.new
    three_d_secure.authentication_amount = authentication_amount
    three_d_secure.authentication_flow = 'browser'
    three_d_secure.challenge_canvas_size = '600x400'
    three_d_secure.challenge_indicator = 'challenge-requested'
    three_d_secure.exemption_request = 'none'
    three_d_secure.redirection_data = redirection_data
    three_d_secure.skip_authentication = false

    card_payment_method_specific_input = Domain::CardPaymentMethodSpecificInput.new
    card_payment_method_specific_input.card = card
    card_payment_method_specific_input.is_recurring = false
    card_payment_method_specific_input.merchant_initiated_reason_indicator = 'delayedCharges'
    card_payment_method_specific_input.payment_product_id = 1
    card_payment_method_specific_input.three_d_secure = three_d_secure
    card_payment_method_specific_input.transaction_channel = 'ECOMMERCE'

    amount_of_money = Domain::AmountOfMoney.new
    amount_of_money.amount = 2980
    amount_of_money.currency_code = 'EUR'

    billing_address = Domain::Address.new
    billing_address.additional_info = 'b'
    billing_address.city = 'Monument Valley'
    billing_address.country_code = 'US'
    billing_address.house_number = '13'
    billing_address.state = 'Utah'
    billing_address.street = 'Desertroad'
    billing_address.zip = '84536'

    company_information = Domain::CompanyInformation.new
    company_information.name = 'Acme Labs'
    company_information.vat_number = '1234AB5678CD'

    contact_details = Domain::ContactDetails.new
    contact_details.email_address = 'wile.e.coyote@acmelabs.com'
    contact_details.fax_number = '+1234567891'
    contact_details.phone_number = '+1234567890'

    browser_data = Domain::BrowserData.new
    browser_data.color_depth = 24
    browser_data.java_enabled = false
    browser_data.screen_height = '1200'
    browser_data.screen_width = '1920'

    device = Domain::CustomerDevice.new
    device.accept_header = 'texthtml,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    device.browser_data = browser_data
    device.ip_address = '123.123.123.123'
    device.locale = 'en-US'
    device.timezone_offset_utc_minutes = '420'
    device.user_agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1 Safari/605.1.15'

    name = Domain::PersonalName.new
    name.first_name = 'Wile'
    name.surname = 'Coyote'
    name.surname_prefix = 'E.'
    name.title = 'Mr.'

    personal_information = Domain::PersonalInformation.new
    personal_information.date_of_birth = '19490917'
    personal_information.gender = 'male'
    personal_information.name = name

    customer = Domain::Customer.new
    customer.account_type = 'none'
    customer.billing_address = billing_address
    customer.company_information = company_information
    customer.contact_details = contact_details
    customer.device = device
    customer.locale = 'en_US'
    customer.merchant_customer_id = '1234'
    customer.personal_information = personal_information

    invoice_data = Domain::OrderInvoiceData.new
    invoice_data.invoice_date = '20140306191500'
    invoice_data.invoice_number = '000000123'

    references = Domain::OrderReferences.new
    references.descriptor = 'Fast and Furry-ous'
    references.invoice_data = invoice_data
    references.merchant_order_id = 123456
    references.merchant_reference = 'AcmeOrder0001'

    shipping_name = Domain::PersonalName.new
    shipping_name.first_name = 'Road'
    shipping_name.surname = 'Runner'
    shipping_name.title = 'Miss'

    address = Domain::AddressPersonal.new
    address.additional_info = 'Suite II'
    address.city = 'Monument Valley'
    address.country_code = 'US'
    address.house_number = '1'
    address.name = shipping_name
    address.state = 'Utah'
    address.street = 'Desertroad'
    address.zip = '84536'

    shipping = Domain::Shipping.new
    shipping.address = address

    items = []

    item1_amount_of_money = Domain::AmountOfMoney.new
    item1_amount_of_money.amount = 2500
    item1_amount_of_money.currency_code = 'EUR'

    item1_invoice_data = Domain::LineItemInvoiceData.new
    item1_invoice_data.description = 'ACME Super Outfit'
    item1_invoice_data.nr_of_items = '1'
    item1_invoice_data.price_per_item = 2500

    item1 = Domain::LineItem.new
    item1.amount_of_money = item1_amount_of_money
    item1.invoice_data = item1_invoice_data

    items << item1

    item2_amount_of_money = Domain::AmountOfMoney.new
    item2_amount_of_money.amount = 480
    item2_amount_of_money.currency_code = 'EUR'

    item2_invoice_data = Domain::LineItemInvoiceData.new
    item2_invoice_data.description = 'Aspirin'
    item2_invoice_data.nr_of_items = '12'
    item2_invoice_data.price_per_item = 40

    item2 = Domain::LineItem.new
    item2.amount_of_money = item2_amount_of_money
    item2.invoice_data = item2_invoice_data

    items << item2

    shopping_cart = Domain::ShoppingCart.new
    shopping_cart.items = items

    order = Domain::Order.new
    order.amount_of_money = amount_of_money
    order.customer = customer
    order.references = references
    order.shipping = shipping
    order.shopping_cart = shopping_cart

    body = Domain::CreatePaymentRequest.new
    body.card_payment_method_specific_input = card_payment_method_specific_input
    body.order = order

    begin
      response = client.v1.merchant('merchantId').payments.create(body)
    rescue Worldline::Connect::SDK::V1::DeclinedPaymentException => e
      handle_declined_payment(e.payment_result)
    rescue Worldline::Connect::SDK::V1::ApiException => e
      handle_error_response(e.error_id, e.errors)
    end
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

def handle_declined_payment(create_payment_result)
  # handle the result here
end

def handle_error_response(error_id, errors)
  # handle the error response here
end
