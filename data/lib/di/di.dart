import 'package:data/data.dart';
import 'package:data/providers/remote/auth/auth_service.dart';
import 'package:data/providers/remote/auth/auth_service_impl.dart';

Future<void> initData() async {
  //firebase
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<GoogleAuthCredential>(getIt);

  getIt.registerLazySingleton<AuthService>(() => AuthServiceImpl(
        firebaseAuth: getIt<FirebaseAuth>(),
        googleAuthCredential: getIt<GoogleAuthCredential>(),
      ));
}
