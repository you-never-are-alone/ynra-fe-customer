# ynba_api_user.api.DefaultApi

## Load the API package
```dart
import 'package:ynba_api_user/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersGet**](DefaultApi.md#usersget) | **GET** /users | Returns a list of all Users
[**usersPut**](DefaultApi.md#usersput) | **PUT** /users | Updates or Creates a User


# **usersGet**
> List<User> usersGet()

Returns a list of all Users

### Example
```dart
import 'package:ynba_api_user/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.usersGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->usersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<User>**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersPut**
> User usersPut()

Updates or Creates a User

### Example
```dart
import 'package:ynba_api_user/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.usersPut();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->usersPut: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

