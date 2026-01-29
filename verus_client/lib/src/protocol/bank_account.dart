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

abstract class BankAccount implements _i1.SerializableModel {
  BankAccount._({
    this.id,
    required this.userId,
    required this.providerName,
    required this.accountIdentifier,
    required this.accountType,
    this.accountHolderName,
    required this.currency,
    required this.country,
    bool? isWallet,
    this.qrAlias,
    bool? isVerified,
    this.verificationMethod,
    this.verifiedAt,
    String? status,
    this.notes,
    required this.connectedAt,
    this.lastUsedAt,
    required this.createdAt,
    required this.updatedAt,
  }) : isWallet = isWallet ?? false,
       isVerified = isVerified ?? false,
       status = status ?? 'active';

  factory BankAccount({
    int? id,
    required int userId,
    required String providerName,
    required String accountIdentifier,
    required String accountType,
    String? accountHolderName,
    required String currency,
    required String country,
    bool? isWallet,
    String? qrAlias,
    bool? isVerified,
    String? verificationMethod,
    DateTime? verifiedAt,
    String? status,
    String? notes,
    required DateTime connectedAt,
    DateTime? lastUsedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _BankAccountImpl;

  factory BankAccount.fromJson(Map<String, dynamic> jsonSerialization) {
    return BankAccount(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      providerName: jsonSerialization['providerName'] as String,
      accountIdentifier: jsonSerialization['accountIdentifier'] as String,
      accountType: jsonSerialization['accountType'] as String,
      accountHolderName: jsonSerialization['accountHolderName'] as String?,
      currency: jsonSerialization['currency'] as String,
      country: jsonSerialization['country'] as String,
      isWallet: jsonSerialization['isWallet'] as bool?,
      qrAlias: jsonSerialization['qrAlias'] as String?,
      isVerified: jsonSerialization['isVerified'] as bool?,
      verificationMethod: jsonSerialization['verificationMethod'] as String?,
      verifiedAt: jsonSerialization['verifiedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['verifiedAt']),
      status: jsonSerialization['status'] as String?,
      notes: jsonSerialization['notes'] as String?,
      connectedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['connectedAt'],
      ),
      lastUsedAt: jsonSerialization['lastUsedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['lastUsedAt']),
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

  String providerName;

  String accountIdentifier;

  String accountType;

  String? accountHolderName;

  String currency;

  String country;

  bool isWallet;

  String? qrAlias;

  bool isVerified;

  String? verificationMethod;

  DateTime? verifiedAt;

  String status;

  String? notes;

  DateTime connectedAt;

  DateTime? lastUsedAt;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [BankAccount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  BankAccount copyWith({
    int? id,
    int? userId,
    String? providerName,
    String? accountIdentifier,
    String? accountType,
    String? accountHolderName,
    String? currency,
    String? country,
    bool? isWallet,
    String? qrAlias,
    bool? isVerified,
    String? verificationMethod,
    DateTime? verifiedAt,
    String? status,
    String? notes,
    DateTime? connectedAt,
    DateTime? lastUsedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'BankAccount',
      if (id != null) 'id': id,
      'userId': userId,
      'providerName': providerName,
      'accountIdentifier': accountIdentifier,
      'accountType': accountType,
      if (accountHolderName != null) 'accountHolderName': accountHolderName,
      'currency': currency,
      'country': country,
      'isWallet': isWallet,
      if (qrAlias != null) 'qrAlias': qrAlias,
      'isVerified': isVerified,
      if (verificationMethod != null) 'verificationMethod': verificationMethod,
      if (verifiedAt != null) 'verifiedAt': verifiedAt?.toJson(),
      'status': status,
      if (notes != null) 'notes': notes,
      'connectedAt': connectedAt.toJson(),
      if (lastUsedAt != null) 'lastUsedAt': lastUsedAt?.toJson(),
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

class _BankAccountImpl extends BankAccount {
  _BankAccountImpl({
    int? id,
    required int userId,
    required String providerName,
    required String accountIdentifier,
    required String accountType,
    String? accountHolderName,
    required String currency,
    required String country,
    bool? isWallet,
    String? qrAlias,
    bool? isVerified,
    String? verificationMethod,
    DateTime? verifiedAt,
    String? status,
    String? notes,
    required DateTime connectedAt,
    DateTime? lastUsedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         providerName: providerName,
         accountIdentifier: accountIdentifier,
         accountType: accountType,
         accountHolderName: accountHolderName,
         currency: currency,
         country: country,
         isWallet: isWallet,
         qrAlias: qrAlias,
         isVerified: isVerified,
         verificationMethod: verificationMethod,
         verifiedAt: verifiedAt,
         status: status,
         notes: notes,
         connectedAt: connectedAt,
         lastUsedAt: lastUsedAt,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [BankAccount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  BankAccount copyWith({
    Object? id = _Undefined,
    int? userId,
    String? providerName,
    String? accountIdentifier,
    String? accountType,
    Object? accountHolderName = _Undefined,
    String? currency,
    String? country,
    bool? isWallet,
    Object? qrAlias = _Undefined,
    bool? isVerified,
    Object? verificationMethod = _Undefined,
    Object? verifiedAt = _Undefined,
    String? status,
    Object? notes = _Undefined,
    DateTime? connectedAt,
    Object? lastUsedAt = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return BankAccount(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      providerName: providerName ?? this.providerName,
      accountIdentifier: accountIdentifier ?? this.accountIdentifier,
      accountType: accountType ?? this.accountType,
      accountHolderName: accountHolderName is String?
          ? accountHolderName
          : this.accountHolderName,
      currency: currency ?? this.currency,
      country: country ?? this.country,
      isWallet: isWallet ?? this.isWallet,
      qrAlias: qrAlias is String? ? qrAlias : this.qrAlias,
      isVerified: isVerified ?? this.isVerified,
      verificationMethod: verificationMethod is String?
          ? verificationMethod
          : this.verificationMethod,
      verifiedAt: verifiedAt is DateTime? ? verifiedAt : this.verifiedAt,
      status: status ?? this.status,
      notes: notes is String? ? notes : this.notes,
      connectedAt: connectedAt ?? this.connectedAt,
      lastUsedAt: lastUsedAt is DateTime? ? lastUsedAt : this.lastUsedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
