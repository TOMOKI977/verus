import 'package:serverpod/serverpod.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:verus_server/src/generated/subscription.dart';
import 'package:verus_server/src/generated/user.dart';
import 'package:verus_server/src/utils/secret_provider.dart';

class SubscriptionEndpoint extends Endpoint {
  @override
  String get name => 'subscription';

  final SecretProvider secretProvider = EnvSecretProvider();

  // ===========================
  // Listar suscripciones del usuario
  // ===========================
  Future<List<Subscription>> listSubscriptions(
    Session session,
    String token,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    return await Subscription.db.find(
      session,
      where: (t) => t.userId.equals(userId),
      orderBy: (t) => t.startDate,
      orderDescending: true,
    );
  }

  // ===========================
  // Suscribir al usuario a un plan
  // ===========================
  Future<Subscription> subscribe(
    Session session,
    String token,
    String plan,
    double priceUsdt,
    int durationDays,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    final now = DateTime.now();
    final subscription = Subscription(
      userId: userId,
      plan: plan,
      priceUsdt: priceUsdt,
      startDate: now,
      endDate: now.add(Duration(days: durationDays)),
      status: 'active',
      createdAt: now,
      updatedAt: now,
    );

    final newSub = await Subscription.db.insertRow(session, subscription);

    var user = await User.db.findById(session, userId);
    if (user != null) {
      user.activeSubscriptionId = newSub.id;
      await User.db.updateRow(session, user);
    }

    return newSub;
  }

  // ===========================
  // Cancelar suscripción activa
  // ===========================
  Future<bool> cancelSubscription(
    Session session,
    String token,
    int subscriptionId,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var subscription = await Subscription.db.findById(session, subscriptionId);

    if (subscription == null || subscription.userId != userId) {
      throw Exception('Suscripción no encontrada o no pertenece al usuario');
    }

    subscription.status = 'cancelled';
    subscription.updatedAt = DateTime.now();
    await Subscription.db.updateRow(session, subscription);

    var user = await User.db.findById(session, userId);
    if (user != null && user.activeSubscriptionId == subscription.id) {
      user.activeSubscriptionId = null;
      await User.db.updateRow(session, user);
    }

    return true;
  }

  // ===========================
  // Upgrade de suscripción (cambiar plan)
  // ===========================
  Future<Subscription> upgradeSubscription(
    Session session,
    String token,
    int subscriptionId,
    String newPlan,
    double newPriceUsdt,
    int newDurationDays,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var subscription = await Subscription.db.findById(session, subscriptionId);

    if (subscription == null || subscription.userId != userId) {
      throw Exception('Suscripción no encontrada o no pertenece al usuario');
    }

    subscription.plan = newPlan;
    subscription.priceUsdt = newPriceUsdt;
    subscription.startDate = DateTime.now();
    subscription.endDate = DateTime.now().add(Duration(days: newDurationDays));
    subscription.status = 'active';
    subscription.updatedAt = DateTime.now();

    await Subscription.db.updateRow(session, subscription);

    return subscription;
  }

  // ===========================
  // Renovar suscripción (extender duración)
  // ===========================
  Future<Subscription> renewSubscription(
    Session session,
    String token,
    int subscriptionId,
    int extraDays,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var subscription = await Subscription.db.findById(session, subscriptionId);

    if (subscription == null || subscription.userId != userId) {
      throw Exception('Suscripción no encontrada o no pertenece al usuario');
    }

    subscription.endDate = subscription.endDate.add(Duration(days: extraDays));
    subscription.updatedAt = DateTime.now();

    await Subscription.db.updateRow(session, subscription);

    return subscription;
  }
}
