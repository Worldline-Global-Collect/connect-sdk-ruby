# Migrating from version 2.x.x to 3.0.0

## Require calls

All module names have been renamed, and some classes have moved to different modules. Each API version now has its own module structure that contains all classes specific for that version, including classes like `APIError`, exceptions and webhooks classes.

You need to change your require calls as follows:

| Previous module                          | Class                        | New module                               | Notes |
|------------------------------------------|------------------------------|------------------------------------------|-------|
| Ingenico::Connect::SDK                   | ApiException                 | Worldline::Connect::SDK::V1              |
| Ingenico::Connect::SDK                   | Authenticator                | Worldline::Connect::SDK::Authentication  |
| Ingenico::Connect::SDK                   | AuthorizationException       | Worldline::Connect::SDK::V1              |
| Ingenico::Connect::SDK                   | CommunicationException       | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | Connection                   | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | DataObject                   | Worldline::Connect::SDK::Domain          |
| Ingenico::Connect::SDK                   | DeclinedPaymentException     | Worldline::Connect::SDK::V1              |
| Ingenico::Connect::SDK                   | DeclinedPayoutException      | Worldline::Connect::SDK::V1              |
| Ingenico::Connect::SDK                   | DeclinedRefundException      | Worldline::Connect::SDK::V1              |
| Ingenico::Connect::SDK                   | DeclinedTransactionException | Worldline::Connect::SDK::V1              |
| Ingenico::Connect::SDK                   | GlobalCollectException       | Worldline::Connect::SDK::V1              |
| Ingenico::Connect::SDK                   | IdempotenceException         | Worldline::Connect::SDK::V1              |
| Ingenico::Connect::SDK                   | Marshaller                   | Worldline::Connect::SDK::JSON            |
| Ingenico::Connect::SDK                   | MarshallerSyntaxException    | Worldline::Connect::SDK::JSON            |
| Ingenico::Connect::SDK                   | MetaDataProvider             | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | MultipartFormDataObject      | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | MultipartFormDataRequest     | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | NotFoundException            | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | ParamRequest                 | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | PooledConnection             | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | ReferenceException           | Worldline::Connect::SDK::V1              |
| Ingenico::Connect::SDK                   | RequestHeader                | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | RequestParam                 | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | ResponseException            | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | ResponseHeader               | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK                   | UploadableFile               | Worldline::Connect::SDK::Domain          |
| Ingenico::Connect::SDK                   | ValidationException          | Worldline::Connect::SDK::V1              |
| Ingenico::Connect::SDK                   | All other classes            | Worldline::Connect::SDK                  |
| Ingenico::Connect::SDK::DefaultImpl      | AuthorizationType            | Worldline::Connect::SDK::Authentication  |
| Ingenico::Connect::SDK::DefaultImpl      | DefaultAuthenticator         | Worldline::Connect::SDK::Authentication  |
| Ingenico::Connect::SDK::DefaultImpl      | DefaultConnection            | Worldline::Connect::SDK::Communication   |
| Ingenico::Connect::SDK::DefaultImpl      | DefaultMarshaller            | Worldline::Connect::SDK::JSON            |
| Ingenico::Connect::SDK::Domain::Metadata | ShoppingCartExtension        | Worldline::Connect::SDK::Domain          |
| Ingenico::Connect::SDK::Domain.*         | All other domain classes     | Worldline::Connect::SDK::V1::Domain      | All domain classes for version 1 of the API are now in the same module |
| Ingenico::Connect::SDK::Logging          | All classes                  | Worldline::Connect::SDK::Logging         |
| Ingenico::Connect::SDK::Merchant.*       | All classes                  | Worldline::Connect::SDK::V1::Merchant.*  | The same module structure is used |
| Ingenico::Connect::SDK::Webhooks         | WebhooksEvent                | Worldline::Connect::SDK::V1::Domain      |
| Ingenico::Connect::SDK::Webhooks         | WebhooksHelper               | Worldline::Connect::SDK::V1::Webhooks    |
| Ingenico::Connect::SDK::Webhooks         | All other classes            | Worldline::Connect::SDK::Webhooks        |

## API calls

Method `merchant` of class `Client` has moved to new class `V1Client`. Instances of this class are available through method `v1` of class `Client`. You need to replace all occurrences of `.merchant` with `.v1.merchant` in your code. For instance:

```ruby
response = client.v1.merchant(merchantId).services.testconnection
```

## API version

Method `API_VERSION` of class `Client` has been removed. You need to replace all occurrences in your code with string literal `'v1'`.

## ApiResource

All parameters of the constructor of class `ApiResource` have changed into named parameters. In addition, the `arg` parameter has been split into separate `parent` and `communicator` parameters, to make it clear what it means. At least one of the two must be given. The following shows what changes to constructor calls you need to make:

| Previous arguments                             | New arguments                                                                                |
|------------------------------------------------|----------------------------------------------------------------------------------------------|
| (parent)                                       | (parent: parent)                                                                             |
| (parent, path_context)                         | (parent: parent, path_context: path_context)                                                 |
| (parent, path_context, client_meta_info)       | (parent: parent, path_context: path_context, client_meta_info: client_meta_info)             |
| (communicator)                                 | (communicator: communicator)                                                                 |
| (communicator, path_context)                   | (communicator: communicator, path_context: path_context)                                     |
| (communicator, path_context, client_meta_info) | (communicator: communicator, path_context: path_context, client_meta_info: client_meta_info) |

Method `create_exception` has been removed. You need to replace all occurrences in your code with calls to function `create_exception` in module `Worldline::Connect::SDK::V1`. Note that this function is specific for version 1 of the API.

## EndpointConfiguration

Class `EndpointConfiguration` has been removed. Its properties have been merged into its only sub class `CommunicatorConfiguration`, its `@@DEFAULT_MAX_CONNECTIONS` constant has been removed, and its `DEFAULT_MAX_CONNECTIONS` method has been replaced by method `CommunicatorConfiguration.default_max_connections`. You need to replace all occurrences of `EndpointConfiguration.@@DEFAULT_MAX_CONNECTIONS` and `EndpointConfiguration.DEFAULT_MAX_CONNECTIONS` in your code with `CommunicatorConfiguration.default_max_connections`.

## GlobalCollectException

Class `GlobalCollectException` has been renamed to `PlatformException`. You need to replace all occurrences in your code with the new name.

## Session

Class `Session` has been integrated into class `Communicator`. Because class `Session` no longer exists, methods `create_session_from_configuration`, `create_session_from_file`, `create_communicator_from_session` and `create_client_from_session` of class `Factory` have been removed as well. The `create_communicator_from_configuration`, `create_communicator_from_file`, `create_client_from_configuration` and `create_client_from_file` of class `Factory` all have additional optional parameters for the `MetadataProvider`, `Connection`, `Authenticator` and `Marshaller` to make it easier to create `Communicator` or `Client` instances with non-default values for some of the `Communicator` components.

If you used class `Factory` to instantiate class `Session` you need to use method `create_communicator_from_configuration` or `create_communicator_from_file` instead. For instance:

```ruby
communicator = Factory.create_communicator_from_file('configuration.ini', 'api_key_id', 'secret_api_key', connection: connection)
client = Factory.create_client_from_communicator(communicator)
```

If you instantiated class `Session` directly you can need to instantiate class `Communicator` instead. The constructor now has the same parameters that the `Session` constructor did, plus the already present parameter for the `Marshaller`. For instance:

```ruby
communicator = Communicator.new(api_endpoint, connection, authenticator, metadata_provider, marshaller)
```

## Authentication

### Authenticator

The `create_simple_authentication_signature` method of class `Authenticator` has been renamed to `get_authorization`. You need to replace all occurrences in your code with the new name.

### DefaultAuthenticator

Class `DefaultAuthenticator` has been renamed to `V1HMACAuthenticator`. You need to replace all occurrences in your code with the new name.

The `authorization_type` parameter has been dropped from the constructor, as it should always be `'v1HMAC'`. You need to remove the first argument for all calls to the constructor in your code.

Constants `HMAC_ALGOR`, `CONTENT_TYPE`, `DATE` and `XGCS` have been removed. You need to replace all occurrences in your code with their original values (`'SHA256'`, `'Content-Type'`, `'Date'` and `'x-gcs'` respectively).

### AuthorizationType

Method `get_signature_string` of class `AuthorizationType` has been removed. You need to replace all occurrences in your code with `AuthorizationType::V1HMAC`.

## Communication

### Connection

Class `Connection` now includes the `ObfuscationCapable` mixin module. You need to implement the `set_body_obfuscator` and `set_header_obfuscator` methods in all custom implementations.

### DefaultConnection

Constants `CONTENT_TYPE` and `JSON_CONTENT_TYPE` of class `DefaultConnection` have been made private. You need to replace all occurrences in your code with their values (`'Content-Type'` and `'application/json'` respectively).

## JSON marshalling

### DefaultMarshaller

Alias `INSTANCE` for method `instance` of class `DefaultMarshaller` has been removed. You need to replace all occurrences in your code with `instance`.

## Metadata

### MetadataProvider

Class `MetaDataProvider` and its `meta_data_headers` property used incorrect capitalization. These have been renamed to `MetadataProvider` and `metadata_headers` respectively. You need to replace all occurrences in your code with the new names.

Methods `SDK_VERSION`, `SERVER_META_INFO_HEADER` `PROHIBITED_HEADERS` have been renamed to `sdk_version`, `server_meta_info_header` and `prohibited_headers` respectively. You need to replace all occurrences in your code with the new names.

Constants `@@SDK_VERSION`, `@@SERVER_META_INFO_HEADER`, `@@PROHIBITED_HEADERS` and `@@CHARSET` have been made private. You need to replace all occurrences `@@SDK_VERSION`, `@@SERVER_META_INFO_HEADER` and `@@PROHIBITED_HEADERS` in your code with calls to methods `sdk_version`, `server_meta_info_header` and `prohibited_headers` respectively, and all occurrences of `@@CHARSET` with its value (`'utf-8'`).

### Integrator

The integrator is now required. When using a configuration file to initialize the SDK, you need to make sure that key `connect.api.integrator` is present with a non-empty value. Otherwise, you need to make sure a non-empty integrator is set on any `CommunicatorConfiguration` or `MetadataProvider` instance you create.

## Logging

### StdoutCommunicatorLogger

Alias `INSTANCE` for method `instance` of class `StdoutCommunicatorLogger` has been removed. You need to replace all occurrences in your code with `instance`.

## Webhooks

### Creating webhooks helpers

Method `create_helper`  of class `Webhooks` has moved to new class `V1WebhooksFactory`. Instances of this class are available through method `v1` of class `Webhooks`. You need to include `.v1` for all occurrences of `Webhooks.create_helper` in your code. For instance:

```ruby
helper = Webhooks.v1.create_helper(InMemorySecretKeyStore.instance)
```

### WebhooksHelper

Method `validate` of class `WebhooksHelper` has been removed. You need to replace all occurrences in your code with a `SignatureValidator`.

### WebhooksHelperBuilder

Class `WebhooksHelperBuilder` and method `create_helper_builder` of class `Webhooks` have been removed. You need to replace all occurrences in your code with calls to method `create_helper` of class `V1WebhooksFactory`. For instance

```ruby
helper = Webhooks.v1.create_helper(InMemorySecretKeyStore.instance, marshaller: marshaller)
```

## Module files

### exceptions.rb

File `exceptions.rb` has been removed. You need to replace all occurrences in your code with `worldline/connect/sdk/v1/exception_factory` for class `ApiException` and its sub classes, or `worldline/connect/sdk/communication` for the more generic communication-related exceptions.

### modules.rb

File `modules.rb` has been removed. It serves no purpose anymore, as each file now declares the full module structure.
