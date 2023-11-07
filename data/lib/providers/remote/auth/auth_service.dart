import 'package:data/data.dart';

abstract class AuthService {
  Future<void> createUser({
    required String name,
    required String email,
    required String password,
  });

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserCredential> signInWithGoogle();

  Future<UserCredential> signInWithFacebook();

  Future<UserCredential> signInWithTwitter();

  Future<void> signOut();
}
