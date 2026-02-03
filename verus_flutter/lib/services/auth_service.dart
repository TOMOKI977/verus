import 'package:verus_client/verus_client.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final Client client;
  final _storage = const FlutterSecureStorage();

  AuthService(this.client);

  Future<String?> login(String email, String password) async {
    final response = await client.auth.login(email, password);

    // Ajusta según lo que devuelva tu endpoint (ej. response.token)
    final token = response['token'] as String?;

    if (token != null) {
      await _storage.write(key: 'jwt', value: token);
    }
    return token;
  }

  Future<String?> register(
    String email,
    String password,
    String firstName,
    String lastName,
    String country,
  ) async {
    final response = await client.auth.register(
      email,
      password,
      firstName,
      lastName,
      country,
    );

    final token = response['token'] as String?;

    if (token != null) {
      await _storage.write(key: 'jwt', value: token);
    }
    return token;
  }

  Future<void> logout() async {
    await _storage.delete(key: 'jwt');
  }

  Future<String?> getToken() async {
    return await _storage.read(key: 'jwt');
  }
}
