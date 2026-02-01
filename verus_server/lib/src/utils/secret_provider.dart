import 'dart:io';

abstract class SecretProvider {
  Future<String> getSecret(String keyName);
}

class EnvSecretProvider implements SecretProvider {
  @override
  Future<String> getSecret(String keyName) async {
    final secret = Platform.environment[keyName];
    if (secret == null || secret.isEmpty) {
      throw Exception('Secret $keyName not found in environment');
    }
    return secret;
  }
}
