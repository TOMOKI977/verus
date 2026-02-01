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

abstract class ApiKey implements _i1.SerializableModel {
  ApiKey._({
    this.id,
    required this.userId,
    required this.exchangeName,
    required this.apiKeyEncrypted,
    this.apiSecretEncrypted,
    this.passphraseEncrypted,
    bool? autoSyncEnabled,
    String? syncFrequency,
    this.lastSyncAt,
    String? syncStatus,
    String? status,
    required this.createdAt,
    required this.updatedAt,
  }) : autoSyncEnabled = autoSyncEnabled ?? true,
       syncFrequency = syncFrequency ?? 'daily',
       syncStatus = syncStatus ?? 'idle',
       status = status ?? 'active';

  factory ApiKey({
    int? id,
    required int userId,
    required String exchangeName,
    required String apiKeyEncrypted,
    String? apiSecretEncrypted,
    String? passphraseEncrypted,
    bool? autoSyncEnabled,
    String? syncFrequency,
    DateTime? lastSyncAt,
    String? syncStatus,
    String? status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ApiKeyImpl;

  factory ApiKey.fromJson(Map<String, dynamic> jsonSerialization) {
    return ApiKey(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      exchangeName: jsonSerialization['exchangeName'] as String,
      apiKeyEncrypted: jsonSerialization['apiKeyEncrypted'] as String,
      apiSecretEncrypted: jsonSerialization['apiSecretEncrypted'] as String?,
      passphraseEncrypted: jsonSerialization['passphraseEncrypted'] as String?,
      autoSyncEnabled: jsonSerialization['autoSyncEnabled'] as bool?,
      syncFrequency: jsonSerialization['syncFrequency'] as String?,
      lastSyncAt: jsonSerialization['lastSyncAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['lastSyncAt']),
      syncStatus: jsonSerialization['syncStatus'] as String?,
      status: jsonSerialization['status'] as String?,
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

  String exchangeName;

  String apiKeyEncrypted;

  String? apiSecretEncrypted;

  String? passphraseEncrypted;

  bool autoSyncEnabled;

  String syncFrequency;

  DateTime? lastSyncAt;

  String syncStatus;

  String status;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [ApiKey]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ApiKey copyWith({
    int? id,
    int? userId,
    String? exchangeName,
    String? apiKeyEncrypted,
    String? apiSecretEncrypted,
    String? passphraseEncrypted,
    bool? autoSyncEnabled,
    String? syncFrequency,
    DateTime? lastSyncAt,
    String? syncStatus,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ApiKey',
      if (id != null) 'id': id,
      'userId': userId,
      'exchangeName': exchangeName,
      'apiKeyEncrypted': apiKeyEncrypted,
      if (apiSecretEncrypted != null) 'apiSecretEncrypted': apiSecretEncrypted,
      if (passphraseEncrypted != null)
        'passphraseEncrypted': passphraseEncrypted,
      'autoSyncEnabled': autoSyncEnabled,
      'syncFrequency': syncFrequency,
      if (lastSyncAt != null) 'lastSyncAt': lastSyncAt?.toJson(),
      'syncStatus': syncStatus,
      'status': status,
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

class _ApiKeyImpl extends ApiKey {
  _ApiKeyImpl({
    int? id,
    required int userId,
    required String exchangeName,
    required String apiKeyEncrypted,
    String? apiSecretEncrypted,
    String? passphraseEncrypted,
    bool? autoSyncEnabled,
    String? syncFrequency,
    DateTime? lastSyncAt,
    String? syncStatus,
    String? status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         exchangeName: exchangeName,
         apiKeyEncrypted: apiKeyEncrypted,
         apiSecretEncrypted: apiSecretEncrypted,
         passphraseEncrypted: passphraseEncrypted,
         autoSyncEnabled: autoSyncEnabled,
         syncFrequency: syncFrequency,
         lastSyncAt: lastSyncAt,
         syncStatus: syncStatus,
         status: status,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [ApiKey]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ApiKey copyWith({
    Object? id = _Undefined,
    int? userId,
    String? exchangeName,
    String? apiKeyEncrypted,
    Object? apiSecretEncrypted = _Undefined,
    Object? passphraseEncrypted = _Undefined,
    bool? autoSyncEnabled,
    String? syncFrequency,
    Object? lastSyncAt = _Undefined,
    String? syncStatus,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ApiKey(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      exchangeName: exchangeName ?? this.exchangeName,
      apiKeyEncrypted: apiKeyEncrypted ?? this.apiKeyEncrypted,
      apiSecretEncrypted: apiSecretEncrypted is String?
          ? apiSecretEncrypted
          : this.apiSecretEncrypted,
      passphraseEncrypted: passphraseEncrypted is String?
          ? passphraseEncrypted
          : this.passphraseEncrypted,
      autoSyncEnabled: autoSyncEnabled ?? this.autoSyncEnabled,
      syncFrequency: syncFrequency ?? this.syncFrequency,
      lastSyncAt: lastSyncAt is DateTime? ? lastSyncAt : this.lastSyncAt,
      syncStatus: syncStatus ?? this.syncStatus,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
