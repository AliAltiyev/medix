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
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage(),
        opaque: true,
        barrierDismissible: false,
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          OnBoarding.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [OnBoardingPage]
class OnBoarding extends PageRouteInfo<void> {
  const OnBoarding()
      : super(
          OnBoarding.name,
          path: '/',
        );

  static const String name = 'OnBoarding';
}
