import 'package:flutter/material.dart';
import 'package:tatware_task/presentation/modules/chat/chat_screen.dart';
import 'package:tatware_task/presentation/modules/get_start/get_start.dart';
import 'package:tatware_task/presentation/navigation/navigation_screen.dart';

import '../modules/home/home_screen.dart';
import '../modules/on_boarding/on_boarding_screen.dart';

class Routes {
  static const String onBoardingRoute = '/';
  static const String getStartRoute = '/getStart';
  static const String chatRoute = '/chat';
  static const String homeRoute = '/home';
  static const String navigationRoute = '/navigation';

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.getStartRoute:
        return MaterialPageRoute(builder: (_) => const GetStartScreen());
      case Routes.chatRoute:
        return MaterialPageRoute(builder: (_) => ChatScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) =>  HomeScreen());
      case Routes.navigationRoute:
        return MaterialPageRoute(builder: (_) =>  NavigationScreen());
      default:
        return MaterialPageRoute(builder: (_) =>  HomeScreen());
    }
  }
}
