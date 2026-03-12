import 'package:flutter/material.dart';

class NavigationService {
  //singleton method;

  static final NavigationService _navigationService =
      NavigationService._internal();

  factory NavigationService() => _navigationService;

  NavigationService._internal();

  // global navigation key

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
}
