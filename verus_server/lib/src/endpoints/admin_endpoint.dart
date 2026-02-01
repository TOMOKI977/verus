import 'package:serverpod/serverpod.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:verus_server/src/generated/user.dart';
import 'package:verus_server/src/generated/subscription.dart';
import 'package:verus_server/src/generated/payment.dart';
import 'package:verus_server/src/generated/audit_log.dart';
import 'package:verus_server/src/utils/secret_provider.dart';

class AdminEndpoint extends Endpoint {
  @override
  String get name => 'admin';

  final SecretProvider secretProvider = EnvSecretProvider();

  // ===========================
  // Validar que el usuario sea admin
  // ===========================
  Future<int> _validateAdmin(Session session, String token) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var user = await User.db.findById(session, userId);
    if (user == null || user.role != 'admin') {
      throw Exception('Acceso denegado: se requiere rol admin');
    }

    return userId;
  }

  // ===========================
  // Listar todos los usuarios
  // ===========================
  Future<List<User>> listUsers(Session session, String token) async {
    await _validateAdmin(session, token);

    return await User.db.find(
      session,
      orderBy: (t) => t.createdAt,
      orderDescending: true,
    );
  }

  // ===========================
  // Listar todas las suscripciones
  // ===========================
  Future<List<Subscription>> listSubscriptions(
    Session session,
    String token,
  ) async {
    await _validateAdmin(session, token);

    return await Subscription.db.find(
      session,
      orderBy: (t) => t.startDate,
      orderDescending: true,
    );
  }

  // ===========================
  // Listar todos los pagos
  // ===========================
  Future<List<Payment>> listPayments(Session session, String token) async {
    await _validateAdmin(session, token);

    return await Payment.db.find(
      session,
      orderBy: (t) => t.createdAt,
      orderDescending: true,
    );
  }

  // ===========================
  // Listar todos los logs
  // ===========================
  Future<List<AuditLog>> listAuditLogs(Session session, String token) async {
    await _validateAdmin(session, token);

    return await AuditLog.db.find(
      session,
      orderBy: (t) => t.timestamp,
      orderDescending: true,
    );
  }

  // ===========================
  // Cambiar rol de un usuario
  // ===========================
  Future<User> changeUserRole(
    Session session,
    String token,
    int userId,
    String newRole,
  ) async {
    await _validateAdmin(session, token);

    var user = await User.db.findById(session, userId);
    if (user == null) {
      throw Exception('Usuario no encontrado');
    }

    user.role = newRole;
    user.updatedAt = DateTime.now();
    await User.db.updateRow(session, user);

    return user;
  }
}
