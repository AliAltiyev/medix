abstract class AuthRepository {
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
