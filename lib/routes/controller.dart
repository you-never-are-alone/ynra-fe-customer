import 'package:flutter/material.dart';
import 'package:ynba_api/ynba_api.dart' as Api;

import '../views/rides.dart';

const String rides = 'rides';

Route<dynamic> controller(RouteSettings routeSettings) {
  var defaultApi = Api.DefaultApi(Api.ApiClient(basePath: 'http://localhost:8080'));

  switch (routeSettings.name) {
    case rides:
      return MaterialPageRoute(
          builder: (context) => RidesPage(
                title: 'Rides',
                rideFuture: defaultApi.ridesGet(),
              ));
    default:
      throw ('This route name does not exit');
  }
}
