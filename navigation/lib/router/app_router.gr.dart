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
    SignIn.name: (routeData) {
      final args =
          routeData.argsAs<SignInArgs>(orElse: () => const SignInArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SignInPage(key: args.key),
      );
    },
    SignUp.name: (routeData) {
      final args =
          routeData.argsAs<SignUpArgs>(orElse: () => const SignUpArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SignUpPage(key: args.key),
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
          SignIn.name,
          path: '/',
        ),
        RouteConfig(
          SignUp.name,
          path: '/sign-up-page',
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
/// [SignInPage]
class SignIn extends PageRouteInfo<SignInArgs> {
  SignIn({Key? key})
      : super(
          SignIn.name,
          path: '/',
          args: SignInArgs(key: key),
        );

  static const String name = 'SignIn';
}

class SignInArgs {
  const SignInArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignInArgs{key: $key}';
  }
}

/// generated route for
/// [SignUpPage]
class SignUp extends PageRouteInfo<SignUpArgs> {
  SignUp({Key? key})
      : super(
          SignUp.name,
          path: '/sign-up-page',
          args: SignUpArgs(key: key),
        );

  static const String name = 'SignUp';
}

class SignUpArgs {
  const SignUpArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignUpArgs{key: $key}';
  }
}
