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

abstract class AuditLog implements _i1.SerializableModel {
  AuditLog._({
    this.id,
    this.userId,
    required this.action,
    this.resource,
    this.resourceId,
    this.ipAddress,
    this.userAgent,
    this.oldValues,
    this.newValues,
    required this.success,
    this.errorMessage,
    required this.timestamp,
  });

  factory AuditLog({
    int? id,
    int? userId,
    required String action,
    String? resource,
    int? resourceId,
    String? ipAddress,
    String? userAgent,
    String? oldValues,
    String? newValues,
    required bool success,
    String? errorMessage,
    required DateTime timestamp,
  }) = _AuditLogImpl;

  factory AuditLog.fromJson(Map<String, dynamic> jsonSerialization) {
    return AuditLog(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      action: jsonSerialization['action'] as String,
      resource: jsonSerialization['resource'] as String?,
      resourceId: jsonSerialization['resourceId'] as int?,
      ipAddress: jsonSerialization['ipAddress'] as String?,
      userAgent: jsonSerialization['userAgent'] as String?,
      oldValues: jsonSerialization['oldValues'] as String?,
      newValues: jsonSerialization['newValues'] as String?,
      success: jsonSerialization['success'] as bool,
      errorMessage: jsonSerialization['errorMessage'] as String?,
      timestamp: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['timestamp'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  String action;

  String? resource;

  int? resourceId;

  String? ipAddress;

  String? userAgent;

  String? oldValues;

  String? newValues;

  bool success;

  String? errorMessage;

  DateTime timestamp;

  /// Returns a shallow copy of this [AuditLog]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AuditLog copyWith({
    int? id,
    int? userId,
    String? action,
    String? resource,
    int? resourceId,
    String? ipAddress,
    String? userAgent,
    String? oldValues,
    String? newValues,
    bool? success,
    String? errorMessage,
    DateTime? timestamp,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'AuditLog',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'action': action,
      if (resource != null) 'resource': resource,
      if (resourceId != null) 'resourceId': resourceId,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
      if (oldValues != null) 'oldValues': oldValues,
      if (newValues != null) 'newValues': newValues,
      'success': success,
      if (errorMessage != null) 'errorMessage': errorMessage,
      'timestamp': timestamp.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AuditLogImpl extends AuditLog {
  _AuditLogImpl({
    int? id,
    int? userId,
    required String action,
    String? resource,
    int? resourceId,
    String? ipAddress,
    String? userAgent,
    String? oldValues,
    String? newValues,
    required bool success,
    String? errorMessage,
    required DateTime timestamp,
  }) : super._(
         id: id,
         userId: userId,
         action: action,
         resource: resource,
         resourceId: resourceId,
         ipAddress: ipAddress,
         userAgent: userAgent,
         oldValues: oldValues,
         newValues: newValues,
         success: success,
         errorMessage: errorMessage,
         timestamp: timestamp,
       );

  /// Returns a shallow copy of this [AuditLog]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  AuditLog copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    String? action,
    Object? resource = _Undefined,
    Object? resourceId = _Undefined,
    Object? ipAddress = _Undefined,
    Object? userAgent = _Undefined,
    Object? oldValues = _Undefined,
    Object? newValues = _Undefined,
    bool? success,
    Object? errorMessage = _Undefined,
    DateTime? timestamp,
  }) {
    return AuditLog(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      action: action ?? this.action,
      resource: resource is String? ? resource : this.resource,
      resourceId: resourceId is int? ? resourceId : this.resourceId,
      ipAddress: ipAddress is String? ? ipAddress : this.ipAddress,
      userAgent: userAgent is String? ? userAgent : this.userAgent,
      oldValues: oldValues is String? ? oldValues : this.oldValues,
      newValues: newValues is String? ? newValues : this.newValues,
      success: success ?? this.success,
      errorMessage: errorMessage is String? ? errorMessage : this.errorMessage,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
