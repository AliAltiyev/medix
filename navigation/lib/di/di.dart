import 'package:navigation/navigation.dart';
import 'package:navigation/router/app_router.dart';

void initNavigation() {
  getIt.registerLazySingleton<AppRouter>(
    () {
      return AppRouter();
    },
  );
}
