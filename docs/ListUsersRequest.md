# OpenapiClient::ListUsersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_model_id** | **String** |  | [optional] |
| **object** | **Object** |  |  |
| **relation** | **String** |  |  |
| **user_filters** | [**Array&lt;UserTypeFilter&gt;**](UserTypeFilter.md) | The type of results returned. Only accepts exactly one value. |  |
| **contextual_tuples** | [**Array&lt;TupleKey&gt;**](TupleKey.md) |  | [optional] |
| **context** | **Object** | Additional request context that will be used to evaluate any ABAC conditions encountered in the query evaluation. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListUsersRequest.new(
  authorization_model_id: 01G5JAVJ41T49E9TT3SKVS7X1J,
  object: null,
  relation: reader,
  user_filters: [{type&#x3D;user}, {type&#x3D;group, relation&#x3D;member}],
  contextual_tuples: null,
  context: null
)
```

