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

abstract class Trans implements _i1.SerializableModel {
  Trans._({
    this.id,
    required this.userId,
    required this.apiKeyId,
    required this.orderNumber,
    required this.exchange,
    required this.timestamp,
    required this.cryptoAmountUsdt,
    required this.localAmount,
    required this.localCurrency,
    required this.exchangeRate,
    required this.txType,
    required this.status,
    this.counterpartyName,
    this.counterpartyUserId,
    this.profitUsdt,
    this.profitLocal,
    this.profitMarginPercent,
    this.bankProofUrl,
    bool? hasProof,
    required this.createdAt,
    required this.updatedAt,
  }) : hasProof = hasProof ?? false;

  factory Trans({
    int? id,
    required int userId,
    required int apiKeyId,
    required String orderNumber,
    required String exchange,
    required DateTime timestamp,
    required double cryptoAmountUsdt,
    required double localAmount,
    required String localCurrency,
    required double exchangeRate,
    required String txType,
    required String status,
    String? counterpartyName,
    String? counterpartyUserId,
    double? profitUsdt,
    double? profitLocal,
    double? profitMarginPercent,
    String? bankProofUrl,
    bool? hasProof,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TransImpl;

  factory Trans.fromJson(Map<String, dynamic> jsonSerialization) {
    return Trans(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      apiKeyId: jsonSerialization['apiKeyId'] as int,
      orderNumber: jsonSerialization['orderNumber'] as String,
      exchange: jsonSerialization['exchange'] as String,
      timestamp: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['timestamp'],
      ),
      cryptoAmountUsdt: (jsonSerialization['cryptoAmountUsdt'] as num)
          .toDouble(),
      localAmount: (jsonSerialization['localAmount'] as num).toDouble(),
      localCurrency: jsonSerialization['localCurrency'] as String,
      exchangeRate: (jsonSerialization['exchangeRate'] as num).toDouble(),
      txType: jsonSerialization['txType'] as String,
      status: jsonSerialization['status'] as String,
      counterpartyName: jsonSerialization['counterpartyName'] as String?,
      counterpartyUserId: jsonSerialization['counterpartyUserId'] as String?,
      profitUsdt: (jsonSerialization['profitUsdt'] as num?)?.toDouble(),
      profitLocal: (jsonSerialization['profitLocal'] as num?)?.toDouble(),
      profitMarginPercent: (jsonSerialization['profitMarginPercent'] as num?)
          ?.toDouble(),
      bankProofUrl: jsonSerialization['bankProofUrl'] as String?,
      hasProof: jsonSerialization['hasProof'] as bool?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
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

  int apiKeyId;

  String orderNumber;

  String exchange;

  DateTime timestamp;

  double cryptoAmountUsdt;

  double localAmount;

  String localCurrency;

  double exchangeRate;

  String txType;

  String status;

  String? counterpartyName;

  String? counterpartyUserId;

  double? profitUsdt;

  double? profitLocal;

  double? profitMarginPercent;

  String? bankProofUrl;

  bool hasProof;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Trans]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Trans copyWith({
    int? id,
    int? userId,
    int? apiKeyId,
    String? orderNumber,
    String? exchange,
    DateTime? timestamp,
    double? cryptoAmountUsdt,
    double? localAmount,
    String? localCurrency,
    double? exchangeRate,
    String? txType,
    String? status,
    String? counterpartyName,
    String? counterpartyUserId,
    double? profitUsdt,
    double? profitLocal,
    double? profitMarginPercent,
    String? bankProofUrl,
    bool? hasProof,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Trans',
      if (id != null) 'id': id,
      'userId': userId,
      'apiKeyId': apiKeyId,
      'orderNumber': orderNumber,
      'exchange': exchange,
      'timestamp': timestamp.toJson(),
      'cryptoAmountUsdt': cryptoAmountUsdt,
      'localAmount': localAmount,
      'localCurrency': localCurrency,
      'exchangeRate': exchangeRate,
      'txType': txType,
      'status': status,
      if (counterpartyName != null) 'counterpartyName': counterpartyName,
      if (counterpartyUserId != null) 'counterpartyUserId': counterpartyUserId,
      if (profitUsdt != null) 'profitUsdt': profitUsdt,
      if (profitLocal != null) 'profitLocal': profitLocal,
      if (profitMarginPercent != null)
        'profitMarginPercent': profitMarginPercent,
      if (bankProofUrl != null) 'bankProofUrl': bankProofUrl,
      'hasProof': hasProof,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TransImpl extends Trans {
  _TransImpl({
    int? id,
    required int userId,
    required int apiKeyId,
    required String orderNumber,
    required String exchange,
    required DateTime timestamp,
    required double cryptoAmountUsdt,
    required double localAmount,
    required String localCurrency,
    required double exchangeRate,
    required String txType,
    required String status,
    String? counterpartyName,
    String? counterpartyUserId,
    double? profitUsdt,
    double? profitLocal,
    double? profitMarginPercent,
    String? bankProofUrl,
    bool? hasProof,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         apiKeyId: apiKeyId,
         orderNumber: orderNumber,
         exchange: exchange,
         timestamp: timestamp,
         cryptoAmountUsdt: cryptoAmountUsdt,
         localAmount: localAmount,
         localCurrency: localCurrency,
         exchangeRate: exchangeRate,
         txType: txType,
         status: status,
         counterpartyName: counterpartyName,
         counterpartyUserId: counterpartyUserId,
         profitUsdt: profitUsdt,
         profitLocal: profitLocal,
         profitMarginPercent: profitMarginPercent,
         bankProofUrl: bankProofUrl,
         hasProof: hasProof,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Trans]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Trans copyWith({
    Object? id = _Undefined,
    int? userId,
    int? apiKeyId,
    String? orderNumber,
    String? exchange,
    DateTime? timestamp,
    double? cryptoAmountUsdt,
    double? localAmount,
    String? localCurrency,
    double? exchangeRate,
    String? txType,
    String? status,
    Object? counterpartyName = _Undefined,
    Object? counterpartyUserId = _Undefined,
    Object? profitUsdt = _Undefined,
    Object? profitLocal = _Undefined,
    Object? profitMarginPercent = _Undefined,
    Object? bankProofUrl = _Undefined,
    bool? hasProof,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Trans(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      apiKeyId: apiKeyId ?? this.apiKeyId,
      orderNumber: orderNumber ?? this.orderNumber,
      exchange: exchange ?? this.exchange,
      timestamp: timestamp ?? this.timestamp,
      cryptoAmountUsdt: cryptoAmountUsdt ?? this.cryptoAmountUsdt,
      localAmount: localAmount ?? this.localAmount,
      localCurrency: localCurrency ?? this.localCurrency,
      exchangeRate: exchangeRate ?? this.exchangeRate,
      txType: txType ?? this.txType,
      status: status ?? this.status,
      counterpartyName: counterpartyName is String?
          ? counterpartyName
          : this.counterpartyName,
      counterpartyUserId: counterpartyUserId is String?
          ? counterpartyUserId
          : this.counterpartyUserId,
      profitUsdt: profitUsdt is double? ? profitUsdt : this.profitUsdt,
      profitLocal: profitLocal is double? ? profitLocal : this.profitLocal,
      profitMarginPercent: profitMarginPercent is double?
          ? profitMarginPercent
          : this.profitMarginPercent,
      bankProofUrl: bankProofUrl is String? ? bankProofUrl : this.bankProofUrl,
      hasProof: hasProof ?? this.hasProof,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
