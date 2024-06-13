import 'package:dhero/config/routes/routes.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const Splashscreen(),
    ),
    GetPage(
      name: Routes.onBoardScreen,
      page: () => const OnBoardScreen(),
    ),
  ];
}
