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

abstract class CountryConfig implements _i1.SerializableModel {
  CountryConfig._({
    this.id,
    required this.countryCode,
    required this.countryName,
    required this.requiresPsav,
    this.psavName,
    this.psavAuthorityName,
    this.psavAuthorityUrl,
    this.dailyLimitWithoutCert,
    this.monthlyLimitWithoutCert,
    this.limitCurrency,
    required this.supportedCurrencies,
    required this.primaryCurrency,
    required this.timezone,
    required this.dateFormat,
    required this.numberFormat,
    bool? isActive,
    bool? comingSoon,
    required this.createdAt,
    required this.updatedAt,
  }) : isActive = isActive ?? true,
       comingSoon = comingSoon ?? false;

  factory CountryConfig({
    int? id,
    required String countryCode,
    required String countryName,
    required bool requiresPsav,
    String? psavName,
    String? psavAuthorityName,
    String? psavAuthorityUrl,
    double? dailyLimitWithoutCert,
    double? monthlyLimitWithoutCert,
    String? limitCurrency,
    required String supportedCurrencies,
    required String primaryCurrency,
    required String timezone,
    required String dateFormat,
    required String numberFormat,
    bool? isActive,
    bool? comingSoon,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CountryConfigImpl;

  factory CountryConfig.fromJson(Map<String, dynamic> jsonSerialization) {
    return CountryConfig(
      id: jsonSerialization['id'] as int?,
      countryCode: jsonSerialization['countryCode'] as String,
      countryName: jsonSerialization['countryName'] as String,
      requiresPsav: jsonSerialization['requiresPsav'] as bool,
      psavName: jsonSerialization['psavName'] as String?,
      psavAuthorityName: jsonSerialization['psavAuthorityName'] as String?,
      psavAuthorityUrl: jsonSerialization['psavAuthorityUrl'] as String?,
      dailyLimitWithoutCert:
          (jsonSerialization['dailyLimitWithoutCert'] as num?)?.toDouble(),
      monthlyLimitWithoutCert:
          (jsonSerialization['monthlyLimitWithoutCert'] as num?)?.toDouble(),
      limitCurrency: jsonSerialization['limitCurrency'] as String?,
      supportedCurrencies: jsonSerialization['supportedCurrencies'] as String,
      primaryCurrency: jsonSerialization['primaryCurrency'] as String,
      timezone: jsonSerialization['timezone'] as String,
      dateFormat: jsonSerialization['dateFormat'] as String,
      numberFormat: jsonSerialization['numberFormat'] as String,
      isActive: jsonSerialization['isActive'] as bool?,
      comingSoon: jsonSerialization['comingSoon'] as bool?,
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

  String countryCode;

  String countryName;

  bool requiresPsav;

  String? psavName;

  String? psavAuthorityName;

  String? psavAuthorityUrl;

  double? dailyLimitWithoutCert;

  double? monthlyLimitWithoutCert;

  String? limitCurrency;

  String supportedCurrencies;

  String primaryCurrency;

  String timezone;

  String dateFormat;

  String numberFormat;

  bool isActive;

  bool comingSoon;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [CountryConfig]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CountryConfig copyWith({
    int? id,
    String? countryCode,
    String? countryName,
    bool? requiresPsav,
    String? psavName,
    String? psavAuthorityName,
    String? psavAuthorityUrl,
    double? dailyLimitWithoutCert,
    double? monthlyLimitWithoutCert,
    String? limitCurrency,
    String? supportedCurrencies,
    String? primaryCurrency,
    String? timezone,
    String? dateFormat,
    String? numberFormat,
    bool? isActive,
    bool? comingSoon,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CountryConfig',
      if (id != null) 'id': id,
      'countryCode': countryCode,
      'countryName': countryName,
      'requiresPsav': requiresPsav,
      if (psavName != null) 'psavName': psavName,
      if (psavAuthorityName != null) 'psavAuthorityName': psavAuthorityName,
      if (psavAuthorityUrl != null) 'psavAuthorityUrl': psavAuthorityUrl,
      if (dailyLimitWithoutCert != null)
        'dailyLimitWithoutCert': dailyLimitWithoutCert,
      if (monthlyLimitWithoutCert != null)
        'monthlyLimitWithoutCert': monthlyLimitWithoutCert,
      if (limitCurrency != null) 'limitCurrency': limitCurrency,
      'supportedCurrencies': supportedCurrencies,
      'primaryCurrency': primaryCurrency,
      'timezone': timezone,
      'dateFormat': dateFormat,
      'numberFormat': numberFormat,
      'isActive': isActive,
      'comingSoon': comingSoon,
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

class _CountryConfigImpl extends CountryConfig {
  _CountryConfigImpl({
    int? id,
    required String countryCode,
    required String countryName,
    required bool requiresPsav,
    String? psavName,
    String? psavAuthorityName,
    String? psavAuthorityUrl,
    double? dailyLimitWithoutCert,
    double? monthlyLimitWithoutCert,
    String? limitCurrency,
    required String supportedCurrencies,
    required String primaryCurrency,
    required String timezone,
    required String dateFormat,
    required String numberFormat,
    bool? isActive,
    bool? comingSoon,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         countryCode: countryCode,
         countryName: countryName,
         requiresPsav: requiresPsav,
         psavName: psavName,
         psavAuthorityName: psavAuthorityName,
         psavAuthorityUrl: psavAuthorityUrl,
         dailyLimitWithoutCert: dailyLimitWithoutCert,
         monthlyLimitWithoutCert: monthlyLimitWithoutCert,
         limitCurrency: limitCurrency,
         supportedCurrencies: supportedCurrencies,
         primaryCurrency: primaryCurrency,
         timezone: timezone,
         dateFormat: dateFormat,
         numberFormat: numberFormat,
         isActive: isActive,
         comingSoon: comingSoon,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [CountryConfig]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CountryConfig copyWith({
    Object? id = _Undefined,
    String? countryCode,
    String? countryName,
    bool? requiresPsav,
    Object? psavName = _Undefined,
    Object? psavAuthorityName = _Undefined,
    Object? psavAuthorityUrl = _Undefined,
    Object? dailyLimitWithoutCert = _Undefined,
    Object? monthlyLimitWithoutCert = _Undefined,
    Object? limitCurrency = _Undefined,
    String? supportedCurrencies,
    String? primaryCurrency,
    String? timezone,
    String? dateFormat,
    String? numberFormat,
    bool? isActive,
    bool? comingSoon,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CountryConfig(
      id: id is int? ? id : this.id,
      countryCode: countryCode ?? this.countryCode,
      countryName: countryName ?? this.countryName,
      requiresPsav: requiresPsav ?? this.requiresPsav,
      psavName: psavName is String? ? psavName : this.psavName,
      psavAuthorityName: psavAuthorityName is String?
          ? psavAuthorityName
          : this.psavAuthorityName,
      psavAuthorityUrl: psavAuthorityUrl is String?
          ? psavAuthorityUrl
          : this.psavAuthorityUrl,
      dailyLimitWithoutCert: dailyLimitWithoutCert is double?
          ? dailyLimitWithoutCert
          : this.dailyLimitWithoutCert,
      monthlyLimitWithoutCert: monthlyLimitWithoutCert is double?
          ? monthlyLimitWithoutCert
          : this.monthlyLimitWithoutCert,
      limitCurrency: limitCurrency is String?
          ? limitCurrency
          : this.limitCurrency,
      supportedCurrencies: supportedCurrencies ?? this.supportedCurrencies,
      primaryCurrency: primaryCurrency ?? this.primaryCurrency,
      timezone: timezone ?? this.timezone,
      dateFormat: dateFormat ?? this.dateFormat,
      numberFormat: numberFormat ?? this.numberFormat,
      isActive: isActive ?? this.isActive,
      comingSoon: comingSoon ?? this.comingSoon,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
