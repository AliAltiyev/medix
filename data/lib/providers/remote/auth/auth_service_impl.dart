import 'package:data/data.dart';
import 'package:data/providers/remote/auth/auth_service.dart';

final class AuthServiceImpl implements AuthService {
  final FirebaseAuth _firebaseAuth;
  final GoogleAuthCredential _googleAuthCredential;


  AuthServiceImpl({
    required FirebaseAuth firebaseAuth,
    required GoogleAuthCredential googleAuthCredential,
  })  : _firebaseAuth = firebaseAuth,
        _googleAuthCredential = googleAuthCredential;


  @override
  Future<void> createUser({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == AppFirebaseException.emailIsAlreadyIsUsed) {
        print('Email is already is used');
      } else if (e.code == AppFirebaseException.weakPassword) {
        print('Weak password');
      }
    }
  }

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Future<UserCredential> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInWithTwitter() {
    // TODO: implement signInWithTwitter
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
