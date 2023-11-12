// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    OnBoarding.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage(),
      );
    },
    MainScreen.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MainScreenPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          OnBoarding.name,
          path: 'onBoardingRoute',
        ),
        RouteConfig(
          MainScreen.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [OnBoardingPage]
class OnBoarding extends PageRouteInfo<void> {
  const OnBoarding()
      : super(
          OnBoarding.name,
          path: 'onBoardingRoute',
        );

  static const String name = 'OnBoarding';
}

/// generated route for
/// [MainScreenPage]
class MainScreen extends PageRouteInfo<void> {
  const MainScreen()
      : super(
          MainScreen.name,
          path: '/',
        );

  static const String name = 'MainScreen';
}
