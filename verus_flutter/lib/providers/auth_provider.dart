import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:verus_flutter/services/auth_service.dart';
import 'package:verus_flutter/main.dart';

class AuthState {
  final bool isLoggedIn;
  final String? token;

  const AuthState({this.isLoggedIn = false, this.token});
}

class AuthNotifier extends Notifier<AuthState> {
  late final AuthService _authService;

  @override
  AuthState build() {
    _authService = AuthService(client);
    return const AuthState();
  }

  Future<void> login(String email, String password) async {
    final token = await _authService.login(email, password);
    if (token != null) {
      state = AuthState(isLoggedIn: true, token: token);
    }
  }

  Future<void> register(
    String email,
    String password,
    String firstName,
    String lastName,
    String country,
  ) async {
    final token = await _authService.register(
      email,
      password,
      firstName,
      lastName,
      country,
    );
    if (token != null) {
      state = AuthState(isLoggedIn: true, token: token);
    }
  }

  Future<void> logout() async {
    await _authService.logout();
    state = const AuthState(isLoggedIn: false, token: null);
  }
}

// Provider global con Riverpod 3.x
final authProvider = NotifierProvider<AuthNotifier, AuthState>(
  AuthNotifier.new,
);
