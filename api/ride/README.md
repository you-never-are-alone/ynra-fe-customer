# ynba_api_ride
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0-SNAPSHOT
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  ynba_api_ride:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  ynba_api_ride:
    path: /path/to/ynba_api_ride
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**ridesGet**](doc//DefaultApi.md#ridesget) | **GET** /rides | Returns a list of all rides
*DefaultApi* | [**ridesPut**](doc//DefaultApi.md#ridesput) | **PUT** /rides | Updates or Creates a new ride
*DefaultApi* | [**routesGet**](doc//DefaultApi.md#routesget) | **GET** /routes | 
*DefaultApi* | [**routesPut**](doc//DefaultApi.md#routesput) | **PUT** /routes | 


## Documentation For Models

 - [PagedResponse](doc//PagedResponse.md)
 - [Point](doc//Point.md)
 - [Ride](doc//Ride.md)
 - [Route](doc//Route.md)
 - [RoutesList](doc//RoutesList.md)
 - [RoutesListAllOf](doc//RoutesListAllOf.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author


