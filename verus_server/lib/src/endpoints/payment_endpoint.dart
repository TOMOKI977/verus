import 'package:serverpod/serverpod.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:verus_server/src/generated/payment.dart';
import 'package:verus_server/src/generated/subscription.dart';
import 'package:verus_server/src/generated/user.dart';
import 'package:verus_server/src/utils/secret_provider.dart';

class PaymentEndpoint extends Endpoint {
  @override
  String get name => 'payment';

  final SecretProvider secretProvider = EnvSecretProvider();

  // ===========================
  // Crear un pago (simulado)
  // ===========================
  Future<Payment> createPayment(
    Session session,
    String token,
    int subscriptionId,
    double amountUsdt,
    String currency, // 'USDT', 'BTC', 'ETH'
    String? network, // 'TRC20', 'ERC20', 'BEP20'
  ) async {
    // Validar JWT
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    // Validar suscripción
    var subscription = await Subscription.db.findById(session, subscriptionId);
    if (subscription == null || subscription.userId != userId) {
      throw Exception('Suscripción no encontrada o no pertenece al usuario');
    }

    final now = DateTime.now();
    var payment = Payment(
      userId: userId,
      subscriptionId: subscriptionId,
      cryptomusOrderId:
          'ORD-${DateTime.now().millisecondsSinceEpoch}', // requerido
      amountUsdt: amountUsdt,
      currency: currency,
      network: network,
      status: 'pending', // 'pending', 'paid', 'failed', 'expired', 'cancelled'
      createdAt: now,
      expiresAt: now.add(Duration(minutes: 15)), // requerido
      updatedAt: now,
    );

    payment = await Payment.db.insertRow(session, payment);
    return payment;
  }

  // ===========================
  // Verificar estado de un pago
  // ===========================
  Future<Payment?> verifyPayment(
    Session session,
    String token,
    int paymentId,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var payment = await Payment.db.findById(session, paymentId);

    if (payment == null || payment.userId != userId) {
      throw Exception('Pago no encontrado o no pertenece al usuario');
    }

    // En MVP: simulamos que el pago se completa automáticamente
    if (payment.status == 'pending') {
      payment.status = 'paid';
      payment.paidAt = DateTime.now();
      payment.updatedAt = DateTime.now();
      await Payment.db.updateRow(session, payment);

      // Activar suscripción asociada
      var subscription = await Subscription.db.findById(
        session,
        payment.subscriptionId!,
      );
      if (subscription != null) {
        subscription.status = 'active';
        subscription.updatedAt = DateTime.now();
        await Subscription.db.updateRow(session, subscription);

        var user = await User.db.findById(session, userId);
        if (user != null) {
          user.activeSubscriptionId = subscription.id;
          await User.db.updateRow(session, user);
        }
      }
    }

    return payment;
  }

  // ===========================
  // Listar pagos del usuario
  // ===========================
  Future<List<Payment>> listPayments(Session session, String token) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    return await Payment.db.find(
      session,
      where: (t) => t.userId.equals(userId),
      orderBy: (t) => t.createdAt,
      orderDescending: true,
    );
  }
}
