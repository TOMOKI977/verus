import 'package:serverpod/serverpod.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:verus_server/src/generated/transaction.dart';
import 'package:verus_server/src/utils/secret_provider.dart';

class TransactionEndpoint extends Endpoint {
  @override
  String get name => 'transaction';

  final SecretProvider secretProvider = EnvSecretProvider();

  // ===========================
  // Listar todas las transacciones del usuario
  // ===========================
  Future<List<Trans>> listTransactions(
    Session session,
    String token, {
    String? exchangeName,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    // Validar JWT
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    // Construir filtro dinámico
    return await Trans.db.find(
      session,
      where: (t) {
        var exp = t.userId.equals(userId);
        if (exchangeName != null) {
          exp &= t.exchange.equals(exchangeName);
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
  // Obtener detalle de una transacción
  // ===========================
  Future<Trans?> getTransaction(
    Session session,
    String token,
    int transactionId,
  ) async {
    final secretKey = await secretProvider.getSecret('JWT_SECRET');
    final jwt = JWT.verify(token, SecretKey(secretKey));
    final userId = int.parse(jwt.payload['id'].toString());

    var transaction = await Trans.db.findById(session, transactionId);

    if (transaction == null || transaction.userId != userId) {
      throw Exception('Transacción no encontrada o no pertenece al usuario');
    }

    return transaction;
  }
}
