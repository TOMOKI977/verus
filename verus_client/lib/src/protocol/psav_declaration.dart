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

abstract class PsavDeclaration implements _i1.SerializableModel {
  PsavDeclaration._({
    this.id,
    required this.userId,
    required this.declarationType,
    required this.periodStart,
    required this.periodEnd,
    required this.country,
    required this.totalTransactions,
    required this.totalVolumeUsdt,
    required this.totalVolumeLocal,
    required this.localCurrency,
    this.reportPdfUrl,
    this.officialFormUrl,
    required this.status,
    this.submittedAt,
    this.responseAt,
    this.responseNotes,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PsavDeclaration({
    int? id,
    required int userId,
    required String declarationType,
    required DateTime periodStart,
    required DateTime periodEnd,
    required String country,
    required int totalTransactions,
    required double totalVolumeUsdt,
    required double totalVolumeLocal,
    required String localCurrency,
    String? reportPdfUrl,
    String? officialFormUrl,
    required String status,
    DateTime? submittedAt,
    DateTime? responseAt,
    String? responseNotes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PsavDeclarationImpl;

  factory PsavDeclaration.fromJson(Map<String, dynamic> jsonSerialization) {
    return PsavDeclaration(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      declarationType: jsonSerialization['declarationType'] as String,
      periodStart: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['periodStart'],
      ),
      periodEnd: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['periodEnd'],
      ),
      country: jsonSerialization['country'] as String,
      totalTransactions: jsonSerialization['totalTransactions'] as int,
      totalVolumeUsdt: (jsonSerialization['totalVolumeUsdt'] as num).toDouble(),
      totalVolumeLocal: (jsonSerialization['totalVolumeLocal'] as num)
          .toDouble(),
      localCurrency: jsonSerialization['localCurrency'] as String,
      reportPdfUrl: jsonSerialization['reportPdfUrl'] as String?,
      officialFormUrl: jsonSerialization['officialFormUrl'] as String?,
      status: jsonSerialization['status'] as String,
      submittedAt: jsonSerialization['submittedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['submittedAt'],
            ),
      responseAt: jsonSerialization['responseAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['responseAt']),
      responseNotes: jsonSerialization['responseNotes'] as String?,
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

  String declarationType;

  DateTime periodStart;

  DateTime periodEnd;

  String country;

  int totalTransactions;

  double totalVolumeUsdt;

  double totalVolumeLocal;

  String localCurrency;

  String? reportPdfUrl;

  String? officialFormUrl;

  String status;

  DateTime? submittedAt;

  DateTime? responseAt;

  String? responseNotes;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [PsavDeclaration]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PsavDeclaration copyWith({
    int? id,
    int? userId,
    String? declarationType,
    DateTime? periodStart,
    DateTime? periodEnd,
    String? country,
    int? totalTransactions,
    double? totalVolumeUsdt,
    double? totalVolumeLocal,
    String? localCurrency,
    String? reportPdfUrl,
    String? officialFormUrl,
    String? status,
    DateTime? submittedAt,
    DateTime? responseAt,
    String? responseNotes,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PsavDeclaration',
      if (id != null) 'id': id,
      'userId': userId,
      'declarationType': declarationType,
      'periodStart': periodStart.toJson(),
      'periodEnd': periodEnd.toJson(),
      'country': country,
      'totalTransactions': totalTransactions,
      'totalVolumeUsdt': totalVolumeUsdt,
      'totalVolumeLocal': totalVolumeLocal,
      'localCurrency': localCurrency,
      if (reportPdfUrl != null) 'reportPdfUrl': reportPdfUrl,
      if (officialFormUrl != null) 'officialFormUrl': officialFormUrl,
      'status': status,
      if (submittedAt != null) 'submittedAt': submittedAt?.toJson(),
      if (responseAt != null) 'responseAt': responseAt?.toJson(),
      if (responseNotes != null) 'responseNotes': responseNotes,
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

class _PsavDeclarationImpl extends PsavDeclaration {
  _PsavDeclarationImpl({
    int? id,
    required int userId,
    required String declarationType,
    required DateTime periodStart,
    required DateTime periodEnd,
    required String country,
    required int totalTransactions,
    required double totalVolumeUsdt,
    required double totalVolumeLocal,
    required String localCurrency,
    String? reportPdfUrl,
    String? officialFormUrl,
    required String status,
    DateTime? submittedAt,
    DateTime? responseAt,
    String? responseNotes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         declarationType: declarationType,
         periodStart: periodStart,
         periodEnd: periodEnd,
         country: country,
         totalTransactions: totalTransactions,
         totalVolumeUsdt: totalVolumeUsdt,
         totalVolumeLocal: totalVolumeLocal,
         localCurrency: localCurrency,
         reportPdfUrl: reportPdfUrl,
         officialFormUrl: officialFormUrl,
         status: status,
         submittedAt: submittedAt,
         responseAt: responseAt,
         responseNotes: responseNotes,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [PsavDeclaration]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PsavDeclaration copyWith({
    Object? id = _Undefined,
    int? userId,
    String? declarationType,
    DateTime? periodStart,
    DateTime? periodEnd,
    String? country,
    int? totalTransactions,
    double? totalVolumeUsdt,
    double? totalVolumeLocal,
    String? localCurrency,
    Object? reportPdfUrl = _Undefined,
    Object? officialFormUrl = _Undefined,
    String? status,
    Object? submittedAt = _Undefined,
    Object? responseAt = _Undefined,
    Object? responseNotes = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PsavDeclaration(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      declarationType: declarationType ?? this.declarationType,
      periodStart: periodStart ?? this.periodStart,
      periodEnd: periodEnd ?? this.periodEnd,
      country: country ?? this.country,
      totalTransactions: totalTransactions ?? this.totalTransactions,
      totalVolumeUsdt: totalVolumeUsdt ?? this.totalVolumeUsdt,
      totalVolumeLocal: totalVolumeLocal ?? this.totalVolumeLocal,
      localCurrency: localCurrency ?? this.localCurrency,
      reportPdfUrl: reportPdfUrl is String? ? reportPdfUrl : this.reportPdfUrl,
      officialFormUrl: officialFormUrl is String?
          ? officialFormUrl
          : this.officialFormUrl,
      status: status ?? this.status,
      submittedAt: submittedAt is DateTime? ? submittedAt : this.submittedAt,
      responseAt: responseAt is DateTime? ? responseAt : this.responseAt,
      responseNotes: responseNotes is String?
          ? responseNotes
          : this.responseNotes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
