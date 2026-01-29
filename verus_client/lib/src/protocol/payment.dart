/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Payment implements _i1.SerializableModel {
  Payment._({
    this.id,
    required this.userId,
    this.subscriptionId,
    required this.cryptomusOrderId,
    this.cryptomusPaymentId,
    this.cryptomusInvoiceUrl,
    required this.amountUsdt,
    String? currency,
    String? status,
    this.txHash,
    this.network,
    required this.createdAt,
    this.paidAt,
    required this.expiresAt,
    this.webhookPayload,
    this.webhookReceivedAt,
    required this.updatedAt,
  }) : currency = currency ?? 'USDT',
       status = status ?? 'pending';

  factory Payment({
    int? id,
    required int userId,
    int? subscriptionId,
    required String cryptomusOrderId,
    String? cryptomusPaymentId,
    String? cryptomusInvoiceUrl,
    required double amountUsdt,
    String? currency,
    String? status,
    String? txHash,
    String? network,
    required DateTime createdAt,
    DateTime? paidAt,
    required DateTime expiresAt,
    String? webhookPayload,
    DateTime? webhookReceivedAt,
    required DateTime updatedAt,
  }) = _PaymentImpl;

  factory Payment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Payment(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      subscriptionId: jsonSerialization['subscriptionId'] as int?,
      cryptomusOrderId: jsonSerialization['cryptomusOrderId'] as String,
      cryptomusPaymentId: jsonSerialization['cryptomusPaymentId'] as String?,
      cryptomusInvoiceUrl: jsonSerialization['cryptomusInvoiceUrl'] as String?,
      amountUsdt: (jsonSerialization['amountUsdt'] as num).toDouble(),
      currency: jsonSerialization['currency'] as String?,
      status: jsonSerialization['status'] as String?,
      txHash: jsonSerialization['txHash'] as String?,
      network: jsonSerialization['network'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      paidAt: jsonSerialization['paidAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['paidAt']),
      expiresAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['expiresAt'],
      ),
      webhookPayload: jsonSerialization['webhookPayload'] as String?,
      webhookReceivedAt: jsonSerialization['webhookReceivedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['webhookReceivedAt'],
            ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  int? subscriptionId;

  String cryptomusOrderId;

  String? cryptomusPaymentId;

  String? cryptomusInvoiceUrl;

  double amountUsdt;

  String currency;

  String status;

  String? txHash;

  String? network;

  DateTime createdAt;

  DateTime? paidAt;

  DateTime expiresAt;

  String? webhookPayload;

  DateTime? webhookReceivedAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Payment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Payment copyWith({
    int? id,
    int? userId,
    int? subscriptionId,
    String? cryptomusOrderId,
    String? cryptomusPaymentId,
    String? cryptomusInvoiceUrl,
    double? amountUsdt,
    String? currency,
    String? status,
    String? txHash,
    String? network,
    DateTime? createdAt,
    DateTime? paidAt,
    DateTime? expiresAt,
    String? webhookPayload,
    DateTime? webhookReceivedAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Payment',
      if (id != null) 'id': id,
      'userId': userId,
      if (subscriptionId != null) 'subscriptionId': subscriptionId,
      'cryptomusOrderId': cryptomusOrderId,
      if (cryptomusPaymentId != null) 'cryptomusPaymentId': cryptomusPaymentId,
      if (cryptomusInvoiceUrl != null)
        'cryptomusInvoiceUrl': cryptomusInvoiceUrl,
      'amountUsdt': amountUsdt,
      'currency': currency,
      'status': status,
      if (txHash != null) 'txHash': txHash,
      if (network != null) 'network': network,
      'createdAt': createdAt.toJson(),
      if (paidAt != null) 'paidAt': paidAt?.toJson(),
      'expiresAt': expiresAt.toJson(),
      if (webhookPayload != null) 'webhookPayload': webhookPayload,
      if (webhookReceivedAt != null)
        'webhookReceivedAt': webhookReceivedAt?.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaymentImpl extends Payment {
  _PaymentImpl({
    int? id,
    required int userId,
    int? subscriptionId,
    required String cryptomusOrderId,
    String? cryptomusPaymentId,
    String? cryptomusInvoiceUrl,
    required double amountUsdt,
    String? currency,
    String? status,
    String? txHash,
    String? network,
    required DateTime createdAt,
    DateTime? paidAt,
    required DateTime expiresAt,
    String? webhookPayload,
    DateTime? webhookReceivedAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         subscriptionId: subscriptionId,
         cryptomusOrderId: cryptomusOrderId,
         cryptomusPaymentId: cryptomusPaymentId,
         cryptomusInvoiceUrl: cryptomusInvoiceUrl,
         amountUsdt: amountUsdt,
         currency: currency,
         status: status,
         txHash: txHash,
         network: network,
         createdAt: createdAt,
         paidAt: paidAt,
         expiresAt: expiresAt,
         webhookPayload: webhookPayload,
         webhookReceivedAt: webhookReceivedAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Payment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Payment copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? subscriptionId = _Undefined,
    String? cryptomusOrderId,
    Object? cryptomusPaymentId = _Undefined,
    Object? cryptomusInvoiceUrl = _Undefined,
    double? amountUsdt,
    String? currency,
    String? status,
    Object? txHash = _Undefined,
    Object? network = _Undefined,
    DateTime? createdAt,
    Object? paidAt = _Undefined,
    DateTime? expiresAt,
    Object? webhookPayload = _Undefined,
    Object? webhookReceivedAt = _Undefined,
    DateTime? updatedAt,
  }) {
    return Payment(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      subscriptionId: subscriptionId is int?
          ? subscriptionId
          : this.subscriptionId,
      cryptomusOrderId: cryptomusOrderId ?? this.cryptomusOrderId,
      cryptomusPaymentId: cryptomusPaymentId is String?
          ? cryptomusPaymentId
          : this.cryptomusPaymentId,
      cryptomusInvoiceUrl: cryptomusInvoiceUrl is String?
          ? cryptomusInvoiceUrl
          : this.cryptomusInvoiceUrl,
      amountUsdt: amountUsdt ?? this.amountUsdt,
      currency: currency ?? this.currency,
      status: status ?? this.status,
      txHash: txHash is String? ? txHash : this.txHash,
      network: network is String? ? network : this.network,
      createdAt: createdAt ?? this.createdAt,
      paidAt: paidAt is DateTime? ? paidAt : this.paidAt,
      expiresAt: expiresAt ?? this.expiresAt,
      webhookPayload: webhookPayload is String?
          ? webhookPayload
          : this.webhookPayload,
      webhookReceivedAt: webhookReceivedAt is DateTime?
          ? webhookReceivedAt
          : this.webhookReceivedAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
