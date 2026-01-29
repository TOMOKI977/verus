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

abstract class SyncJob implements _i1.SerializableModel {
  SyncJob._({
    this.id,
    required this.userId,
    required this.apiKeyId,
    required this.jobId,
    required this.jobType,
    required this.status,
    int? totalTransactions,
    int? processedTransactions,
    int? newTransactions,
    int? updatedTransactions,
    this.startedAt,
    this.completedAt,
    this.durationSeconds,
    this.errorMessage,
    this.errorDetails,
    int? retryCount,
    required this.createdAt,
    required this.updatedAt,
  }) : totalTransactions = totalTransactions ?? 0,
       processedTransactions = processedTransactions ?? 0,
       newTransactions = newTransactions ?? 0,
       updatedTransactions = updatedTransactions ?? 0,
       retryCount = retryCount ?? 0;

  factory SyncJob({
    int? id,
    required int userId,
    required int apiKeyId,
    required String jobId,
    required String jobType,
    required String status,
    int? totalTransactions,
    int? processedTransactions,
    int? newTransactions,
    int? updatedTransactions,
    DateTime? startedAt,
    DateTime? completedAt,
    int? durationSeconds,
    String? errorMessage,
    String? errorDetails,
    int? retryCount,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SyncJobImpl;

  factory SyncJob.fromJson(Map<String, dynamic> jsonSerialization) {
    return SyncJob(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      apiKeyId: jsonSerialization['apiKeyId'] as int,
      jobId: jsonSerialization['jobId'] as String,
      jobType: jsonSerialization['jobType'] as String,
      status: jsonSerialization['status'] as String,
      totalTransactions: jsonSerialization['totalTransactions'] as int?,
      processedTransactions: jsonSerialization['processedTransactions'] as int?,
      newTransactions: jsonSerialization['newTransactions'] as int?,
      updatedTransactions: jsonSerialization['updatedTransactions'] as int?,
      startedAt: jsonSerialization['startedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      completedAt: jsonSerialization['completedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['completedAt'],
            ),
      durationSeconds: jsonSerialization['durationSeconds'] as int?,
      errorMessage: jsonSerialization['errorMessage'] as String?,
      errorDetails: jsonSerialization['errorDetails'] as String?,
      retryCount: jsonSerialization['retryCount'] as int?,
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

  String jobId;

  String jobType;

  String status;

  int totalTransactions;

  int processedTransactions;

  int newTransactions;

  int updatedTransactions;

  DateTime? startedAt;

  DateTime? completedAt;

  int? durationSeconds;

  String? errorMessage;

  String? errorDetails;

  int retryCount;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [SyncJob]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SyncJob copyWith({
    int? id,
    int? userId,
    int? apiKeyId,
    String? jobId,
    String? jobType,
    String? status,
    int? totalTransactions,
    int? processedTransactions,
    int? newTransactions,
    int? updatedTransactions,
    DateTime? startedAt,
    DateTime? completedAt,
    int? durationSeconds,
    String? errorMessage,
    String? errorDetails,
    int? retryCount,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SyncJob',
      if (id != null) 'id': id,
      'userId': userId,
      'apiKeyId': apiKeyId,
      'jobId': jobId,
      'jobType': jobType,
      'status': status,
      'totalTransactions': totalTransactions,
      'processedTransactions': processedTransactions,
      'newTransactions': newTransactions,
      'updatedTransactions': updatedTransactions,
      if (startedAt != null) 'startedAt': startedAt?.toJson(),
      if (completedAt != null) 'completedAt': completedAt?.toJson(),
      if (durationSeconds != null) 'durationSeconds': durationSeconds,
      if (errorMessage != null) 'errorMessage': errorMessage,
      if (errorDetails != null) 'errorDetails': errorDetails,
      'retryCount': retryCount,
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

class _SyncJobImpl extends SyncJob {
  _SyncJobImpl({
    int? id,
    required int userId,
    required int apiKeyId,
    required String jobId,
    required String jobType,
    required String status,
    int? totalTransactions,
    int? processedTransactions,
    int? newTransactions,
    int? updatedTransactions,
    DateTime? startedAt,
    DateTime? completedAt,
    int? durationSeconds,
    String? errorMessage,
    String? errorDetails,
    int? retryCount,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         apiKeyId: apiKeyId,
         jobId: jobId,
         jobType: jobType,
         status: status,
         totalTransactions: totalTransactions,
         processedTransactions: processedTransactions,
         newTransactions: newTransactions,
         updatedTransactions: updatedTransactions,
         startedAt: startedAt,
         completedAt: completedAt,
         durationSeconds: durationSeconds,
         errorMessage: errorMessage,
         errorDetails: errorDetails,
         retryCount: retryCount,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [SyncJob]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SyncJob copyWith({
    Object? id = _Undefined,
    int? userId,
    int? apiKeyId,
    String? jobId,
    String? jobType,
    String? status,
    int? totalTransactions,
    int? processedTransactions,
    int? newTransactions,
    int? updatedTransactions,
    Object? startedAt = _Undefined,
    Object? completedAt = _Undefined,
    Object? durationSeconds = _Undefined,
    Object? errorMessage = _Undefined,
    Object? errorDetails = _Undefined,
    int? retryCount,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SyncJob(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      apiKeyId: apiKeyId ?? this.apiKeyId,
      jobId: jobId ?? this.jobId,
      jobType: jobType ?? this.jobType,
      status: status ?? this.status,
      totalTransactions: totalTransactions ?? this.totalTransactions,
      processedTransactions:
          processedTransactions ?? this.processedTransactions,
      newTransactions: newTransactions ?? this.newTransactions,
      updatedTransactions: updatedTransactions ?? this.updatedTransactions,
      startedAt: startedAt is DateTime? ? startedAt : this.startedAt,
      completedAt: completedAt is DateTime? ? completedAt : this.completedAt,
      durationSeconds: durationSeconds is int?
          ? durationSeconds
          : this.durationSeconds,
      errorMessage: errorMessage is String? ? errorMessage : this.errorMessage,
      errorDetails: errorDetails is String? ? errorDetails : this.errorDetails,
      retryCount: retryCount ?? this.retryCount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
