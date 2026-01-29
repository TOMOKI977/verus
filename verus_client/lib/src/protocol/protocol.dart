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
import 'api_key.dart' as _i2;
import 'audit_log.dart' as _i3;
import 'bank_account.dart' as _i4;
import 'country_config.dart' as _i5;
import 'email_verification.dart' as _i6;
import 'greetings/greeting.dart' as _i7;
import 'payment.dart' as _i8;
import 'psav_declaration.dart' as _i9;
import 'subscription.dart' as _i10;
import 'sync_job.dart' as _i11;
import 'transaction.dart' as _i12;
import 'user.dart' as _i13;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i14;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i15;
export 'api_key.dart';
export 'audit_log.dart';
export 'bank_account.dart';
export 'country_config.dart';
export 'email_verification.dart';
export 'greetings/greeting.dart';
export 'payment.dart';
export 'psav_declaration.dart';
export 'subscription.dart';
export 'sync_job.dart';
export 'transaction.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.ApiKey) {
      return _i2.ApiKey.fromJson(data) as T;
    }
    if (t == _i3.AuditLog) {
      return _i3.AuditLog.fromJson(data) as T;
    }
    if (t == _i4.BankAccount) {
      return _i4.BankAccount.fromJson(data) as T;
    }
    if (t == _i5.CountryConfig) {
      return _i5.CountryConfig.fromJson(data) as T;
    }
    if (t == _i6.EmailVerification) {
      return _i6.EmailVerification.fromJson(data) as T;
    }
    if (t == _i7.Greeting) {
      return _i7.Greeting.fromJson(data) as T;
    }
    if (t == _i8.Payment) {
      return _i8.Payment.fromJson(data) as T;
    }
    if (t == _i9.PsavDeclaration) {
      return _i9.PsavDeclaration.fromJson(data) as T;
    }
    if (t == _i10.Subscription) {
      return _i10.Subscription.fromJson(data) as T;
    }
    if (t == _i11.SyncJob) {
      return _i11.SyncJob.fromJson(data) as T;
    }
    if (t == _i12.Trans) {
      return _i12.Trans.fromJson(data) as T;
    }
    if (t == _i13.User) {
      return _i13.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.ApiKey?>()) {
      return (data != null ? _i2.ApiKey.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.AuditLog?>()) {
      return (data != null ? _i3.AuditLog.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.BankAccount?>()) {
      return (data != null ? _i4.BankAccount.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.CountryConfig?>()) {
      return (data != null ? _i5.CountryConfig.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.EmailVerification?>()) {
      return (data != null ? _i6.EmailVerification.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Greeting?>()) {
      return (data != null ? _i7.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Payment?>()) {
      return (data != null ? _i8.Payment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.PsavDeclaration?>()) {
      return (data != null ? _i9.PsavDeclaration.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Subscription?>()) {
      return (data != null ? _i10.Subscription.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.SyncJob?>()) {
      return (data != null ? _i11.SyncJob.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.Trans?>()) {
      return (data != null ? _i12.Trans.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.User?>()) {
      return (data != null ? _i13.User.fromJson(data) : null) as T;
    }
    try {
      return _i14.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i15.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.ApiKey => 'ApiKey',
      _i3.AuditLog => 'AuditLog',
      _i4.BankAccount => 'BankAccount',
      _i5.CountryConfig => 'CountryConfig',
      _i6.EmailVerification => 'EmailVerification',
      _i7.Greeting => 'Greeting',
      _i8.Payment => 'Payment',
      _i9.PsavDeclaration => 'PsavDeclaration',
      _i10.Subscription => 'Subscription',
      _i11.SyncJob => 'SyncJob',
      _i12.Trans => 'Trans',
      _i13.User => 'User',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('verus.', '');
    }

    switch (data) {
      case _i2.ApiKey():
        return 'ApiKey';
      case _i3.AuditLog():
        return 'AuditLog';
      case _i4.BankAccount():
        return 'BankAccount';
      case _i5.CountryConfig():
        return 'CountryConfig';
      case _i6.EmailVerification():
        return 'EmailVerification';
      case _i7.Greeting():
        return 'Greeting';
      case _i8.Payment():
        return 'Payment';
      case _i9.PsavDeclaration():
        return 'PsavDeclaration';
      case _i10.Subscription():
        return 'Subscription';
      case _i11.SyncJob():
        return 'SyncJob';
      case _i12.Trans():
        return 'Trans';
      case _i13.User():
        return 'User';
    }
    className = _i14.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_idp.$className';
    }
    className = _i15.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'ApiKey') {
      return deserialize<_i2.ApiKey>(data['data']);
    }
    if (dataClassName == 'AuditLog') {
      return deserialize<_i3.AuditLog>(data['data']);
    }
    if (dataClassName == 'BankAccount') {
      return deserialize<_i4.BankAccount>(data['data']);
    }
    if (dataClassName == 'CountryConfig') {
      return deserialize<_i5.CountryConfig>(data['data']);
    }
    if (dataClassName == 'EmailVerification') {
      return deserialize<_i6.EmailVerification>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i7.Greeting>(data['data']);
    }
    if (dataClassName == 'Payment') {
      return deserialize<_i8.Payment>(data['data']);
    }
    if (dataClassName == 'PsavDeclaration') {
      return deserialize<_i9.PsavDeclaration>(data['data']);
    }
    if (dataClassName == 'Subscription') {
      return deserialize<_i10.Subscription>(data['data']);
    }
    if (dataClassName == 'SyncJob') {
      return deserialize<_i11.SyncJob>(data['data']);
    }
    if (dataClassName == 'Trans') {
      return deserialize<_i12.Trans>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i13.User>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _i14.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _i15.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i14.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _i15.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
