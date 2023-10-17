import 'package:medix/medix.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  initNavigation();
  runApp(Application());
}
