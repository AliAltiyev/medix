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
    OnBoar.name: (routeData) {
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
          OnBoar.name,
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
class OnBoar extends PageRouteInfo<void> {
  const OnBoar()
      : super(
          OnBoar.name,
          path: 'onBoardingRoute',
        );

  static const String name = 'OnBoar';
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
