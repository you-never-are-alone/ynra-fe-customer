import 'package:flutter/material.dart';
import 'package:ynba_api_ride/api.dart' as RideApi;

import '../views/rides.dart';

const String rides = 'rides';

Route<dynamic> controller(RouteSettings routeSettings) {
  final api = RideApi.DefaultApi(RideApi.ApiClient(basePath: 'http://localhost:8080'));

  switch (routeSettings.name) {
    case rides:
      return MaterialPageRoute(
          builder: (context) => RidesPage(
                title: 'Rides',
                rideFuture: api.ridesGet(),
              ));
    default:
      throw ('This route name does not exit');
  }
}
