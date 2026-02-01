import 'package:serverpod/serverpod.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:verus_server/src/generated/api_key.dart';
import 'package:verus_server/src/generated/audit_log.dart';
import 'package:verus_server/src/utils/secret_provider.dart';

class ApiKeyEndpoint extends Endpoint {
  @override
  String get name => 'apikey';

  final SecretProvider secretProvider = EnvSecretProvider();

  // ===========================
  // Agregar una nueva API key
  // ===========================
  Future<ApiKey> addApiKey(
    Session session,
    String token, // ahora recibimos el JWT
    String exchangeName,
    String apiKey,
    String? apiSecret,
    String? passphrase,
  ) async {
    // Validar JWT
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    // Validar que no exista ya una API key para ese exchange
    final existing = await ApiKey.db.findFirstRow(
      session,
      where: (t) =>
          t.userId.equals(userId) & t.exchangeName.equals(exchangeName),
    );

    if (existing != null) {
      throw Exception('Ya tienes una API key para $exchangeName');
    }

    // Guardar API key (⚠️ en producción: cifrar con KMS)
    var newApiKey = ApiKey(
      userId: userId,
      exchangeName: exchangeName,
      apiKeyEncrypted: apiKey,
      apiSecretEncrypted: apiSecret,
      passphraseEncrypted: passphrase,
      syncStatus: 'idle',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    newApiKey = await ApiKey.db.insertRow(session, newApiKey);

    // Registrar en AuditLog
    await AuditLog.db.insertRow(
      session,
      AuditLog(
        userId: userId,
        action: 'add_apikey',
        resource: 'apikey',
        resourceId: newApiKey.id,
        success: true,
        timestamp: DateTime.now(),
      ),
    );

    return newApiKey;
  }

  // ===========================
  // Listar API keys del usuario
  // ===========================
  Future<List<ApiKey>> listApiKeys(Session session, String token) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    return await ApiKey.db.find(
      session,
      where: (t) => t.userId.equals(userId),
    );
  }

  // ===========================
  // Revocar API key
  // ===========================
  Future<bool> revokeApiKey(Session session, String token, int apiKeyId) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var apiKey = await ApiKey.db.findById(session, apiKeyId);
    if (apiKey == null || apiKey.userId != userId) {
      throw Exception('API key no encontrada o no pertenece al usuario');
    }

    apiKey.status = 'revoked';
    apiKey.updatedAt = DateTime.now();
    await ApiKey.db.updateRow(session, apiKey);

    await AuditLog.db.insertRow(
      session,
      AuditLog(
        userId: userId,
        action: 'revoke_apikey',
        resource: 'apikey',
        resourceId: apiKey.id,
        success: true,
        timestamp: DateTime.now(),
      ),
    );

    return true;
  }
}
