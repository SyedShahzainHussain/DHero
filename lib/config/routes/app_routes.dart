part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splash = _Paths.splash;
  static const onBoardScreen = _Paths.onboardSreen;
}

abstract class _Paths {
  static const splash = '/SplashScreen';
  static const onboardSreen = "/onBoardScreen";
}
