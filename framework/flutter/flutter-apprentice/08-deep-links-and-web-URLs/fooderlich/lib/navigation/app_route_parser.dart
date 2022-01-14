import 'package:flutter/material.dart';

import 'app_link.dart';

/// Parses the route using RouteInformationParser
class AppRouteParser extends RouteInformationParser<AppLink> {
  @override
  Future<AppLink> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    return AppLink.fromLocation(routeInformation.location);
  }

  @override
  RouteInformation? restoreRouteInformation(AppLink appLink) {
    return RouteInformation(
      location: appLink.toLocation(),
    );
  }
}
