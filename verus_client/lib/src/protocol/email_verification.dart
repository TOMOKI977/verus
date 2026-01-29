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

abstract class EmailVerification implements _i1.SerializableModel {
  EmailVerification._({
    this.id,
    required this.userId,
    required this.email,
    required this.token,
    bool? isUsed,
    this.usedAt,
    required this.expiresAt,
    required this.createdAt,
  }) : isUsed = isUsed ?? false;

  factory EmailVerification({
    int? id,
    required int userId,
    required String email,
    required String token,
    bool? isUsed,
    DateTime? usedAt,
    required DateTime expiresAt,
    required DateTime createdAt,
  }) = _EmailVerificationImpl;

  factory EmailVerification.fromJson(Map<String, dynamic> jsonSerialization) {
    return EmailVerification(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      email: jsonSerialization['email'] as String,
      token: jsonSerialization['token'] as String,
      isUsed: jsonSerialization['isUsed'] as bool?,
      usedAt: jsonSerialization['usedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['usedAt']),
      expiresAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['expiresAt'],
      ),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  String email;

  String token;

  bool isUsed;

  DateTime? usedAt;

  DateTime expiresAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [EmailVerification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  EmailVerification copyWith({
    int? id,
    int? userId,
    String? email,
    String? token,
    bool? isUsed,
    DateTime? usedAt,
    DateTime? expiresAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'EmailVerification',
      if (id != null) 'id': id,
      'userId': userId,
      'email': email,
      'token': token,
      'isUsed': isUsed,
      if (usedAt != null) 'usedAt': usedAt?.toJson(),
      'expiresAt': expiresAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _EmailVerificationImpl extends EmailVerification {
  _EmailVerificationImpl({
    int? id,
    required int userId,
    required String email,
    required String token,
    bool? isUsed,
    DateTime? usedAt,
    required DateTime expiresAt,
    required DateTime createdAt,
  }) : super._(
         id: id,
         userId: userId,
         email: email,
         token: token,
         isUsed: isUsed,
         usedAt: usedAt,
         expiresAt: expiresAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [EmailVerification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  EmailVerification copyWith({
    Object? id = _Undefined,
    int? userId,
    String? email,
    String? token,
    bool? isUsed,
    Object? usedAt = _Undefined,
    DateTime? expiresAt,
    DateTime? createdAt,
  }) {
    return EmailVerification(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      email: email ?? this.email,
      token: token ?? this.token,
      isUsed: isUsed ?? this.isUsed,
      usedAt: usedAt is DateTime? ? usedAt : this.usedAt,
      expiresAt: expiresAt ?? this.expiresAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
