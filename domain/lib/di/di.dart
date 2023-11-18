import 'package:domain/domain.dart';

Future<void> initDomain() async {
  getIt.registerLazySingleton<FetchRelaxSoundsUseCase>(
    FetchRelaxSoundsUseCase.new,
  );
}
