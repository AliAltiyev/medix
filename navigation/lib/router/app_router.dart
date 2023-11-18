import 'package:navigation/navigation.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: OnBoardingPage,
      path: 'onBoardingRoute',
      name: 'onBoar',
    ),
    AutoRoute(
      page: MainScreenPage,
      path: '/',
      name: 'MainScreen',
    ),
  ],
)
class AppRouter extends _$AppRouter {}
