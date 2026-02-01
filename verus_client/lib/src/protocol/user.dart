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

abstract class User implements _i1.SerializableModel {
  User._({
    this.id,
    required this.email,
    required this.passwordHash,
    required this.firstName,
    required this.lastName,
    required this.country,
    String? accountType,
    String? role,
    bool? emailVerified,
    bool? onboardingCompleted,
    this.activeSubscriptionId,
    this.totpSecret,
    bool? totpEnabled,
    this.lastLoginAt,
    bool? hasPsav,
    this.psavExpiresAt,
    this.preferredCurrencies,
    String? primaryCurrency,
    String? timezone,
    String? language,
    this.jwtIssuedAt,
    this.jwtExpiresAt,
    this.refreshToken,
    required this.createdAt,
    required this.updatedAt,
  }) : accountType = accountType ?? 'natural',
       role = role ?? 'user',
       emailVerified = emailVerified ?? false,
       onboardingCompleted = onboardingCompleted ?? false,
       totpEnabled = totpEnabled ?? false,
       hasPsav = hasPsav ?? false,
       primaryCurrency = primaryCurrency ?? 'BOB',
       timezone = timezone ?? 'America/La_Paz',
       language = language ?? 'es';

  factory User({
    int? id,
    required String email,
    required String passwordHash,
    required String firstName,
    required String lastName,
    required String country,
    String? accountType,
    String? role,
    bool? emailVerified,
    bool? onboardingCompleted,
    int? activeSubscriptionId,
    String? totpSecret,
    bool? totpEnabled,
    DateTime? lastLoginAt,
    bool? hasPsav,
    DateTime? psavExpiresAt,
    String? preferredCurrencies,
    String? primaryCurrency,
    String? timezone,
    String? language,
    DateTime? jwtIssuedAt,
    DateTime? jwtExpiresAt,
    String? refreshToken,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      email: jsonSerialization['email'] as String,
      passwordHash: jsonSerialization['passwordHash'] as String,
      firstName: jsonSerialization['firstName'] as String,
      lastName: jsonSerialization['lastName'] as String,
      country: jsonSerialization['country'] as String,
      accountType: jsonSerialization['accountType'] as String?,
      role: jsonSerialization['role'] as String?,
      emailVerified: jsonSerialization['emailVerified'] as bool?,
      onboardingCompleted: jsonSerialization['onboardingCompleted'] as bool?,
      activeSubscriptionId: jsonSerialization['activeSubscriptionId'] as int?,
      totpSecret: jsonSerialization['totpSecret'] as String?,
      totpEnabled: jsonSerialization['totpEnabled'] as bool?,
      lastLoginAt: jsonSerialization['lastLoginAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastLoginAt'],
            ),
      hasPsav: jsonSerialization['hasPsav'] as bool?,
      psavExpiresAt: jsonSerialization['psavExpiresAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['psavExpiresAt'],
            ),
      preferredCurrencies: jsonSerialization['preferredCurrencies'] as String?,
      primaryCurrency: jsonSerialization['primaryCurrency'] as String?,
      timezone: jsonSerialization['timezone'] as String?,
      language: jsonSerialization['language'] as String?,
      jwtIssuedAt: jsonSerialization['jwtIssuedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['jwtIssuedAt'],
            ),
      jwtExpiresAt: jsonSerialization['jwtExpiresAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['jwtExpiresAt'],
            ),
      refreshToken: jsonSerialization['refreshToken'] as String?,
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

  String email;

  String passwordHash;

  String firstName;

  String lastName;

  String country;

  String accountType;

  String role;

  bool emailVerified;

  bool onboardingCompleted;

  int? activeSubscriptionId;

  String? totpSecret;

  bool totpEnabled;

  DateTime? lastLoginAt;

  bool hasPsav;

  DateTime? psavExpiresAt;

  String? preferredCurrencies;

  String primaryCurrency;

  String timezone;

  String language;

  DateTime? jwtIssuedAt;

  DateTime? jwtExpiresAt;

  String? refreshToken;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [User]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  User copyWith({
    int? id,
    String? email,
    String? passwordHash,
    String? firstName,
    String? lastName,
    String? country,
    String? accountType,
    String? role,
    bool? emailVerified,
    bool? onboardingCompleted,
    int? activeSubscriptionId,
    String? totpSecret,
    bool? totpEnabled,
    DateTime? lastLoginAt,
    bool? hasPsav,
    DateTime? psavExpiresAt,
    String? preferredCurrencies,
    String? primaryCurrency,
    String? timezone,
    String? language,
    DateTime? jwtIssuedAt,
    DateTime? jwtExpiresAt,
    String? refreshToken,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'User',
      if (id != null) 'id': id,
      'email': email,
      'passwordHash': passwordHash,
      'firstName': firstName,
      'lastName': lastName,
      'country': country,
      'accountType': accountType,
      'role': role,
      'emailVerified': emailVerified,
      'onboardingCompleted': onboardingCompleted,
      if (activeSubscriptionId != null)
        'activeSubscriptionId': activeSubscriptionId,
      if (totpSecret != null) 'totpSecret': totpSecret,
      'totpEnabled': totpEnabled,
      if (lastLoginAt != null) 'lastLoginAt': lastLoginAt?.toJson(),
      'hasPsav': hasPsav,
      if (psavExpiresAt != null) 'psavExpiresAt': psavExpiresAt?.toJson(),
      if (preferredCurrencies != null)
        'preferredCurrencies': preferredCurrencies,
      'primaryCurrency': primaryCurrency,
      'timezone': timezone,
      'language': language,
      if (jwtIssuedAt != null) 'jwtIssuedAt': jwtIssuedAt?.toJson(),
      if (jwtExpiresAt != null) 'jwtExpiresAt': jwtExpiresAt?.toJson(),
      if (refreshToken != null) 'refreshToken': refreshToken,
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

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String email,
    required String passwordHash,
    required String firstName,
    required String lastName,
    required String country,
    String? accountType,
    String? role,
    bool? emailVerified,
    bool? onboardingCompleted,
    int? activeSubscriptionId,
    String? totpSecret,
    bool? totpEnabled,
    DateTime? lastLoginAt,
    bool? hasPsav,
    DateTime? psavExpiresAt,
    String? preferredCurrencies,
    String? primaryCurrency,
    String? timezone,
    String? language,
    DateTime? jwtIssuedAt,
    DateTime? jwtExpiresAt,
    String? refreshToken,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         email: email,
         passwordHash: passwordHash,
         firstName: firstName,
         lastName: lastName,
         country: country,
         accountType: accountType,
         role: role,
         emailVerified: emailVerified,
         onboardingCompleted: onboardingCompleted,
         activeSubscriptionId: activeSubscriptionId,
         totpSecret: totpSecret,
         totpEnabled: totpEnabled,
         lastLoginAt: lastLoginAt,
         hasPsav: hasPsav,
         psavExpiresAt: psavExpiresAt,
         preferredCurrencies: preferredCurrencies,
         primaryCurrency: primaryCurrency,
         timezone: timezone,
         language: language,
         jwtIssuedAt: jwtIssuedAt,
         jwtExpiresAt: jwtExpiresAt,
         refreshToken: refreshToken,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [User]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  User copyWith({
    Object? id = _Undefined,
    String? email,
    String? passwordHash,
    String? firstName,
    String? lastName,
    String? country,
    String? accountType,
    String? role,
    bool? emailVerified,
    bool? onboardingCompleted,
    Object? activeSubscriptionId = _Undefined,
    Object? totpSecret = _Undefined,
    bool? totpEnabled,
    Object? lastLoginAt = _Undefined,
    bool? hasPsav,
    Object? psavExpiresAt = _Undefined,
    Object? preferredCurrencies = _Undefined,
    String? primaryCurrency,
    String? timezone,
    String? language,
    Object? jwtIssuedAt = _Undefined,
    Object? jwtExpiresAt = _Undefined,
    Object? refreshToken = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return User(
      id: id is int? ? id : this.id,
      email: email ?? this.email,
      passwordHash: passwordHash ?? this.passwordHash,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      country: country ?? this.country,
      accountType: accountType ?? this.accountType,
      role: role ?? this.role,
      emailVerified: emailVerified ?? this.emailVerified,
      onboardingCompleted: onboardingCompleted ?? this.onboardingCompleted,
      activeSubscriptionId: activeSubscriptionId is int?
          ? activeSubscriptionId
          : this.activeSubscriptionId,
      totpSecret: totpSecret is String? ? totpSecret : this.totpSecret,
      totpEnabled: totpEnabled ?? this.totpEnabled,
      lastLoginAt: lastLoginAt is DateTime? ? lastLoginAt : this.lastLoginAt,
      hasPsav: hasPsav ?? this.hasPsav,
      psavExpiresAt: psavExpiresAt is DateTime?
          ? psavExpiresAt
          : this.psavExpiresAt,
      preferredCurrencies: preferredCurrencies is String?
          ? preferredCurrencies
          : this.preferredCurrencies,
      primaryCurrency: primaryCurrency ?? this.primaryCurrency,
      timezone: timezone ?? this.timezone,
      language: language ?? this.language,
      jwtIssuedAt: jwtIssuedAt is DateTime? ? jwtIssuedAt : this.jwtIssuedAt,
      jwtExpiresAt: jwtExpiresAt is DateTime?
          ? jwtExpiresAt
          : this.jwtExpiresAt,
      refreshToken: refreshToken is String? ? refreshToken : this.refreshToken,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
