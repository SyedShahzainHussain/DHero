import 'package:dhero/config/routes/routes.dart';
import 'package:flutter/material.dart';
part 'app_routes.dart';

class AppRoutes {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const Splashscreen());
      case Routes.onBoardScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text("No Routes Defined"),
                  ),
                ));
    }
  }
}
