import 'package:serverpod/serverpod.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:verus_server/src/generated/audit_log.dart';
import 'package:verus_server/src/generated/subscription.dart';
import 'package:verus_server/src/generated/user.dart';
import 'package:verus_server/src/utils/secret_provider.dart';

class AuthEndpoint extends Endpoint {
  @override
  String get name => 'auth';

  final SecretProvider secretProvider = EnvSecretProvider();

  // Registro de usuario
  Future<Map<String, dynamic>> register(
    Session session,
    String email,
    String password,
    String firstName,
    String lastName,
    String country,
  ) async {
    if (!email.contains('@')) {
      throw Exception('Email inválido');
    }

    final passwordHash = password.hashCode.toString();

    var user = User(
      email: email,
      passwordHash: passwordHash,
      firstName: firstName,
      lastName: lastName,
      country: country,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    user = await User.db.insertRow(session, user);

    var subscription = Subscription(
      userId: user.id!,
      plan: 'trial',
      priceUsdt: 0.0,
      startDate: DateTime.now(),
      endDate: DateTime.now().add(Duration(days: 12)),
      status: 'active',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    subscription = await Subscription.db.insertRow(session, subscription);

    user.activeSubscriptionId = subscription.id;
    await User.db.updateRow(session, user);

    // Generar JWT
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT(
      {
        'id': user.id,
        'email': user.email,
        'role': user.role,
      },
      issuer: 'verus',
      subject: user.id.toString(),
    );

    final token = jwt.sign(SecretKey(secretKey));

    user.jwtIssuedAt = DateTime.now();
    user.jwtExpiresAt = DateTime.now().add(Duration(hours: 1));
    await User.db.updateRow(session, user);

    return {
      'user': user.toJson(),
      'token': token,
    };
  }

  // Login de usuario
  Future<Map<String, dynamic>> login(
    Session session,
    String email,
    String password,
  ) async {
    var user = await User.db.findFirstRow(
      session,
      where: (t) => t.email.equals(email),
    );

    if (user == null) throw Exception('Usuario no encontrado');
    if (user.passwordHash != password.hashCode.toString()) {
      throw Exception('Contraseña incorrecta');
    }

    user.lastLoginAt = DateTime.now();
    await User.db.updateRow(session, user);

    await AuditLog.db.insertRow(
      session,
      AuditLog(
        userId: user.id,
        action: 'login',
        success: true,
        timestamp: DateTime.now(),
      ),
    );

    // Generar JWT
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT(
      {
        'id': user.id,
        'email': user.email,
        'role': user.role,
      },
      issuer: 'verus',
      subject: user.id.toString(),
    );

    final token = jwt.sign(SecretKey(secretKey));

    user.jwtIssuedAt = DateTime.now();
    user.jwtExpiresAt = DateTime.now().add(Duration(hours: 1));
    await User.db.updateRow(session, user);

    return {
      'user': user.toJson(),
      'token': token,
    };
  }
}
