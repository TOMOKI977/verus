import 'package:serverpod/serverpod.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:verus_server/src/generated/audit_log.dart';
import 'package:verus_server/src/utils/secret_provider.dart';

class AuditLogEndpoint extends Endpoint {
  @override
  String get name => 'auditlog';

  final SecretProvider secretProvider = EnvSecretProvider();

  // ===========================
  // Listar logs del usuario
  // ===========================
  Future<List<AuditLog>> listLogs(
    Session session,
    String token, {
    String? action,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    // Validar JWT
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    // Construir filtro dinámico
    return await AuditLog.db.find(
      session,
      where: (t) {
        var exp = t.userId.equals(userId);
        if (action != null) {
          exp &= t.action.equals(action);
        }
        if (startDate != null) {
          exp &= t.timestamp >= startDate;
        }
        if (endDate != null) {
          exp &= t.timestamp <= endDate;
        }
        return exp;
      },
      orderBy: (t) => t.timestamp,
      orderDescending: true,
    );
  }

  // ===========================
  // Obtener detalle de un log
  // ===========================
  Future<AuditLog?> getLog(
    Session session,
    String token,
    int logId,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var log = await AuditLog.db.findById(session, logId);

    if (log == null || log.userId != userId) {
      throw Exception('Log no encontrado o no pertenece al usuario');
    }

    return log;
  }
}
