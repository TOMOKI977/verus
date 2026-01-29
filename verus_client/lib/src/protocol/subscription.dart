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

abstract class Subscription implements _i1.SerializableModel {
  Subscription._({
    this.id,
    required this.userId,
    required this.plan,
    required this.priceUsdt,
    required this.startDate,
    required this.endDate,
    required this.status,
    bool? autoRenew,
    this.cancelledAt,
    this.cancellationReason,
    required this.createdAt,
    required this.updatedAt,
  }) : autoRenew = autoRenew ?? false;

  factory Subscription({
    int? id,
    required int userId,
    required String plan,
    required double priceUsdt,
    required DateTime startDate,
    required DateTime endDate,
    required String status,
    bool? autoRenew,
    DateTime? cancelledAt,
    String? cancellationReason,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SubscriptionImpl;

  factory Subscription.fromJson(Map<String, dynamic> jsonSerialization) {
    return Subscription(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      plan: jsonSerialization['plan'] as String,
      priceUsdt: (jsonSerialization['priceUsdt'] as num).toDouble(),
      startDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['startDate'],
      ),
      endDate: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endDate']),
      status: jsonSerialization['status'] as String,
      autoRenew: jsonSerialization['autoRenew'] as bool?,
      cancelledAt: jsonSerialization['cancelledAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['cancelledAt'],
            ),
      cancellationReason: jsonSerialization['cancellationReason'] as String?,
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

  String plan;

  double priceUsdt;

  DateTime startDate;

  DateTime endDate;

  String status;

  bool autoRenew;

  DateTime? cancelledAt;

  String? cancellationReason;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Subscription]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Subscription copyWith({
    int? id,
    int? userId,
    String? plan,
    double? priceUsdt,
    DateTime? startDate,
    DateTime? endDate,
    String? status,
    bool? autoRenew,
    DateTime? cancelledAt,
    String? cancellationReason,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Subscription',
      if (id != null) 'id': id,
      'userId': userId,
      'plan': plan,
      'priceUsdt': priceUsdt,
      'startDate': startDate.toJson(),
      'endDate': endDate.toJson(),
      'status': status,
      'autoRenew': autoRenew,
      if (cancelledAt != null) 'cancelledAt': cancelledAt?.toJson(),
      if (cancellationReason != null) 'cancellationReason': cancellationReason,
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

class _SubscriptionImpl extends Subscription {
  _SubscriptionImpl({
    int? id,
    required int userId,
    required String plan,
    required double priceUsdt,
    required DateTime startDate,
    required DateTime endDate,
    required String status,
    bool? autoRenew,
    DateTime? cancelledAt,
    String? cancellationReason,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         plan: plan,
         priceUsdt: priceUsdt,
         startDate: startDate,
         endDate: endDate,
         status: status,
         autoRenew: autoRenew,
         cancelledAt: cancelledAt,
         cancellationReason: cancellationReason,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Subscription]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Subscription copyWith({
    Object? id = _Undefined,
    int? userId,
    String? plan,
    double? priceUsdt,
    DateTime? startDate,
    DateTime? endDate,
    String? status,
    bool? autoRenew,
    Object? cancelledAt = _Undefined,
    Object? cancellationReason = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Subscription(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      plan: plan ?? this.plan,
      priceUsdt: priceUsdt ?? this.priceUsdt,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      status: status ?? this.status,
      autoRenew: autoRenew ?? this.autoRenew,
      cancelledAt: cancelledAt is DateTime? ? cancelledAt : this.cancelledAt,
      cancellationReason: cancellationReason is String?
          ? cancellationReason
          : this.cancellationReason,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
