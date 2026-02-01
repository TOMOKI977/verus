import 'package:serverpod/serverpod.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:verus_server/src/generated/user.dart';
import 'package:verus_server/src/utils/secret_provider.dart';

class UserEndpoint extends Endpoint {
  @override
  String get name => 'user';

  final SecretProvider secretProvider = EnvSecretProvider();

  // ===========================
  // Obtener perfil del usuario
  // ===========================
  Future<User?> getProfile(Session session, String token) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    return await User.db.findById(session, userId);
  }

  // ===========================
  // Actualizar perfil del usuario
  // ===========================
  Future<User> updateProfile(
    Session session,
    String token, {
    String? firstName,
    String? lastName,
    String? country,
  }) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var user = await User.db.findById(session, userId);
    if (user == null) {
      throw Exception('Usuario no encontrado');
    }

    if (firstName != null) user.firstName = firstName;
    if (lastName != null) user.lastName = lastName;
    if (country != null) user.country = country;

    user.updatedAt = DateTime.now();
    await User.db.updateRow(session, user);

    return user;
  }

  // ===========================
  // Cambiar contraseña
  // ===========================
  Future<bool> changePassword(
    Session session,
    String token,
    String oldPassword,
    String newPassword,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var user = await User.db.findById(session, userId);
    if (user == null) {
      throw Exception('Usuario no encontrado');
    }

    // Validar contraseña actual
    if (user.passwordHash != oldPassword.hashCode.toString()) {
      throw Exception('Contraseña actual incorrecta');
    }

    // Actualizar contraseña
    user.passwordHash = newPassword.hashCode.toString();
    user.updatedAt = DateTime.now();
    await User.db.updateRow(session, user);

    return true;
  }
}
