import 'package:serverpod/serverpod.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:verus_server/src/generated/notification.dart';
import 'package:verus_server/src/utils/secret_provider.dart';

class NotificationEndpoint extends Endpoint {
  @override
  String get name => 'notification';

  final SecretProvider secretProvider = EnvSecretProvider();

  // ===========================
  // Listar notificaciones del usuario
  // ===========================
  Future<List<Notification>> listNotifications(
    Session session,
    String token,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    return await Notification.db.find(
      session,
      where: (t) => t.userId.equals(userId),
      orderBy: (t) => t.createdAt,
      orderDescending: true,
    );
  }

  // ===========================
  // Crear una notificación
  // ===========================
  Future<Notification> createNotification(
    Session session,
    String token,
    String title,
    String message, {
    String? type, // ej. 'warning', 'info', 'payment'
  }) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    final now = DateTime.now();
    var notification = Notification(
      userId: userId,
      title: title,
      message: message,
      type: type ?? 'info',
      read: false,
      createdAt: now,
      updatedAt: now,
    );

    notification = await Notification.db.insertRow(session, notification);
    return notification;
  }

  // ===========================
  // Marcar notificación como leída
  // ===========================
  Future<bool> markAsRead(
    Session session,
    String token,
    int notificationId,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var notification = await Notification.db.findById(session, notificationId);

    if (notification == null || notification.userId != userId) {
      throw Exception('Notificación no encontrada o no pertenece al usuario');
    }

    notification.read = true;
    notification.updatedAt = DateTime.now();
    await Notification.db.updateRow(session, notification);

    return true;
  }

  // ===========================
  // Marcar todas las notificaciones como leídas
  // ===========================
  Future<int> markAllAsRead(Session session, String token) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var notifications = await Notification.db.find(
      session,
      where: (t) => t.userId.equals(userId) & t.read.equals(false),
    );

    for (var n in notifications) {
      n.read = true;
      n.updatedAt = DateTime.now();
      await Notification.db.updateRow(session, n);
    }

    return notifications.length; // devuelve cuántas se marcaron como leídas
  }
}
