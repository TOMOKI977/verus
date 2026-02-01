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
import 'package:serverpod/serverpod.dart' as _i1;

abstract class User implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = UserTable();

  static const db = UserRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static UserInclude include() {
    return UserInclude._();
  }

  static UserIncludeList includeList({
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    UserInclude? include,
  }) {
    return UserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(User.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(User.t),
      include: include,
    );
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

class UserUpdateTable extends _i1.UpdateTable<UserTable> {
  UserUpdateTable(super.table);

  _i1.ColumnValue<String, String> email(String value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<String, String> passwordHash(String value) => _i1.ColumnValue(
    table.passwordHash,
    value,
  );

  _i1.ColumnValue<String, String> firstName(String value) => _i1.ColumnValue(
    table.firstName,
    value,
  );

  _i1.ColumnValue<String, String> lastName(String value) => _i1.ColumnValue(
    table.lastName,
    value,
  );

  _i1.ColumnValue<String, String> country(String value) => _i1.ColumnValue(
    table.country,
    value,
  );

  _i1.ColumnValue<String, String> accountType(String value) => _i1.ColumnValue(
    table.accountType,
    value,
  );

  _i1.ColumnValue<String, String> role(String value) => _i1.ColumnValue(
    table.role,
    value,
  );

  _i1.ColumnValue<bool, bool> emailVerified(bool value) => _i1.ColumnValue(
    table.emailVerified,
    value,
  );

  _i1.ColumnValue<bool, bool> onboardingCompleted(bool value) =>
      _i1.ColumnValue(
        table.onboardingCompleted,
        value,
      );

  _i1.ColumnValue<int, int> activeSubscriptionId(int? value) => _i1.ColumnValue(
    table.activeSubscriptionId,
    value,
  );

  _i1.ColumnValue<String, String> totpSecret(String? value) => _i1.ColumnValue(
    table.totpSecret,
    value,
  );

  _i1.ColumnValue<bool, bool> totpEnabled(bool value) => _i1.ColumnValue(
    table.totpEnabled,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> lastLoginAt(DateTime? value) =>
      _i1.ColumnValue(
        table.lastLoginAt,
        value,
      );

  _i1.ColumnValue<bool, bool> hasPsav(bool value) => _i1.ColumnValue(
    table.hasPsav,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> psavExpiresAt(DateTime? value) =>
      _i1.ColumnValue(
        table.psavExpiresAt,
        value,
      );

  _i1.ColumnValue<String, String> preferredCurrencies(String? value) =>
      _i1.ColumnValue(
        table.preferredCurrencies,
        value,
      );

  _i1.ColumnValue<String, String> primaryCurrency(String value) =>
      _i1.ColumnValue(
        table.primaryCurrency,
        value,
      );

  _i1.ColumnValue<String, String> timezone(String value) => _i1.ColumnValue(
    table.timezone,
    value,
  );

  _i1.ColumnValue<String, String> language(String value) => _i1.ColumnValue(
    table.language,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> jwtIssuedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.jwtIssuedAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> jwtExpiresAt(DateTime? value) =>
      _i1.ColumnValue(
        table.jwtExpiresAt,
        value,
      );

  _i1.ColumnValue<String, String> refreshToken(String? value) =>
      _i1.ColumnValue(
        table.refreshToken,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _i1.ColumnValue(
        table.updatedAt,
        value,
      );
}

class UserTable extends _i1.Table<int?> {
  UserTable({super.tableRelation}) : super(tableName: 'users') {
    updateTable = UserUpdateTable(this);
    email = _i1.ColumnString(
      'email',
      this,
    );
    passwordHash = _i1.ColumnString(
      'passwordHash',
      this,
    );
    firstName = _i1.ColumnString(
      'firstName',
      this,
    );
    lastName = _i1.ColumnString(
      'lastName',
      this,
    );
    country = _i1.ColumnString(
      'country',
      this,
    );
    accountType = _i1.ColumnString(
      'accountType',
      this,
      hasDefault: true,
    );
    role = _i1.ColumnString(
      'role',
      this,
      hasDefault: true,
    );
    emailVerified = _i1.ColumnBool(
      'emailVerified',
      this,
      hasDefault: true,
    );
    onboardingCompleted = _i1.ColumnBool(
      'onboardingCompleted',
      this,
      hasDefault: true,
    );
    activeSubscriptionId = _i1.ColumnInt(
      'activeSubscriptionId',
      this,
    );
    totpSecret = _i1.ColumnString(
      'totpSecret',
      this,
    );
    totpEnabled = _i1.ColumnBool(
      'totpEnabled',
      this,
      hasDefault: true,
    );
    lastLoginAt = _i1.ColumnDateTime(
      'lastLoginAt',
      this,
    );
    hasPsav = _i1.ColumnBool(
      'hasPsav',
      this,
      hasDefault: true,
    );
    psavExpiresAt = _i1.ColumnDateTime(
      'psavExpiresAt',
      this,
    );
    preferredCurrencies = _i1.ColumnString(
      'preferredCurrencies',
      this,
    );
    primaryCurrency = _i1.ColumnString(
      'primaryCurrency',
      this,
      hasDefault: true,
    );
    timezone = _i1.ColumnString(
      'timezone',
      this,
      hasDefault: true,
    );
    language = _i1.ColumnString(
      'language',
      this,
      hasDefault: true,
    );
    jwtIssuedAt = _i1.ColumnDateTime(
      'jwtIssuedAt',
      this,
    );
    jwtExpiresAt = _i1.ColumnDateTime(
      'jwtExpiresAt',
      this,
    );
    refreshToken = _i1.ColumnString(
      'refreshToken',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final UserUpdateTable updateTable;

  late final _i1.ColumnString email;

  late final _i1.ColumnString passwordHash;

  late final _i1.ColumnString firstName;

  late final _i1.ColumnString lastName;

  late final _i1.ColumnString country;

  late final _i1.ColumnString accountType;

  late final _i1.ColumnString role;

  late final _i1.ColumnBool emailVerified;

  late final _i1.ColumnBool onboardingCompleted;

  late final _i1.ColumnInt activeSubscriptionId;

  late final _i1.ColumnString totpSecret;

  late final _i1.ColumnBool totpEnabled;

  late final _i1.ColumnDateTime lastLoginAt;

  late final _i1.ColumnBool hasPsav;

  late final _i1.ColumnDateTime psavExpiresAt;

  late final _i1.ColumnString preferredCurrencies;

  late final _i1.ColumnString primaryCurrency;

  late final _i1.ColumnString timezone;

  late final _i1.ColumnString language;

  late final _i1.ColumnDateTime jwtIssuedAt;

  late final _i1.ColumnDateTime jwtExpiresAt;

  late final _i1.ColumnString refreshToken;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    email,
    passwordHash,
    firstName,
    lastName,
    country,
    accountType,
    role,
    emailVerified,
    onboardingCompleted,
    activeSubscriptionId,
    totpSecret,
    totpEnabled,
    lastLoginAt,
    hasPsav,
    psavExpiresAt,
    preferredCurrencies,
    primaryCurrency,
    timezone,
    language,
    jwtIssuedAt,
    jwtExpiresAt,
    refreshToken,
    createdAt,
    updatedAt,
  ];
}

class UserInclude extends _i1.IncludeObject {
  UserInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => User.t;
}

class UserIncludeList extends _i1.IncludeList {
  UserIncludeList._({
    _i1.WhereExpressionBuilder<UserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(User.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => User.t;
}

class UserRepository {
  const UserRepository._();

  /// Returns a list of [User]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<User>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [User] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<User?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [User] by its [id] or null if no such row exists.
  Future<User?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<User>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [User]s in the list and returns the inserted rows.
  ///
  /// The returned [User]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<User>> insert(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<User>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [User] and returns the inserted row.
  ///
  /// The returned [User] will have its `id` field set.
  Future<User> insertRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<User>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [User]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<User>> update(
    _i1.Session session,
    List<User> rows, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<User>(
      rows,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  /// Updates a single [User]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<User> updateRow(
    _i1.Session session,
    User row, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<User>(
      row,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  /// Updates a single [User] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<User?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<UserUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<User>(
      id,
      columnValues: columnValues(User.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [User]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<User>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<UserUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<UserTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<User>(
      columnValues: columnValues(User.t.updateTable),
      where: where(User.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [User]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<User>> delete(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [User].
  Future<User> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<User>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<User>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where?.call(User.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
