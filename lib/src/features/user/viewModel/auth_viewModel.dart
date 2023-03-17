import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petskin/src/features/user/repository/auth_repository.dart';

final authProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});

final authStateProvider = StreamProvider<User?>((ref) {
  return ref.read(authProvider).authStateChange;
});

class AuthViewModel {
  final AuthRepository _authRepository = AuthRepository();

  void signInWithGoogle() {
    _authRepository.signInWithGoogle();
  }
}
