import 'package:navigation/navigation.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  CustomRoute(
    path: '/',
    name: 'OnBoarding',
    page: OnBoardingPage,
  ),
])
class AppRouter extends _$AppRouter {}
