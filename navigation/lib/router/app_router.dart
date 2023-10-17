import 'package:navigation/navigation.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: OnBoardingPage,
      path: 'onBoardingRoute',
      name: 'onBoarding',
    ),
    AutoRoute(
      page: SignInPage,
      path: '/',
      name: 'SignIn',
    ),
    AutoRoute(
      page: SignUpPage,
      name: 'SignUp',
    ),
  ],
)
class AppRouter extends _$AppRouter {}
