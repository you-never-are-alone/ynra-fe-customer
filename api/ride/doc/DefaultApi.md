# ynba_api_ride.api.DefaultApi

## Load the API package
```dart
import 'package:ynba_api_ride/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ridesGet**](DefaultApi.md#ridesget) | **GET** /rides | Returns a list of all rides
[**ridesPut**](DefaultApi.md#ridesput) | **PUT** /rides | Updates or Creates a new ride
[**routesGet**](DefaultApi.md#routesget) | **GET** /routes | 
[**routesPut**](DefaultApi.md#routesput) | **PUT** /routes | 


# **ridesGet**
> List<Ride> ridesGet()

Returns a list of all rides

### Example
```dart
import 'package:ynba_api_ride/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.ridesGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->ridesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Ride>**](Ride.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ridesPut**
> Ride ridesPut(ride)

Updates or Creates a new ride

### Example
```dart
import 'package:ynba_api_ride/api.dart';

final api_instance = DefaultApi();
final ride = Ride(); // Ride | 

try {
    final result = api_instance.ridesPut(ride);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->ridesPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ride** | [**Ride**](Ride.md)|  | 

### Return type

[**Ride**](Ride.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routesGet**
> RoutesList routesGet()



### Example
```dart
import 'package:ynba_api_ride/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.routesGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->routesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RoutesList**](RoutesList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **routesPut**
> Route routesPut(route)



### Example
```dart
import 'package:ynba_api_ride/api.dart';

final api_instance = DefaultApi();
final route = Route(); // Route | 

try {
    final result = api_instance.routesPut(route);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->routesPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **route** | [**Route**](Route.md)|  | 

### Return type

[**Route**](Route.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

