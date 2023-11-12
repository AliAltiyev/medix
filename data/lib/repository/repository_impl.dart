import 'package:data/data.dart';

final class RepositoryImpl implements AuthRepository {
  @override
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }
}
