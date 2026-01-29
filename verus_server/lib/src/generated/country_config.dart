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

abstract class CountryConfig
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = CountryConfigTable();

  static const db = CountryConfigRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static CountryConfigInclude include() {
    return CountryConfigInclude._();
  }

  static CountryConfigIncludeList includeList({
    _i1.WhereExpressionBuilder<CountryConfigTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryConfigTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryConfigTable>? orderByList,
    CountryConfigInclude? include,
  }) {
    return CountryConfigIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CountryConfig.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CountryConfig.t),
      include: include,
    );
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

class CountryConfigUpdateTable extends _i1.UpdateTable<CountryConfigTable> {
  CountryConfigUpdateTable(super.table);

  _i1.ColumnValue<String, String> countryCode(String value) => _i1.ColumnValue(
    table.countryCode,
    value,
  );

  _i1.ColumnValue<String, String> countryName(String value) => _i1.ColumnValue(
    table.countryName,
    value,
  );

  _i1.ColumnValue<bool, bool> requiresPsav(bool value) => _i1.ColumnValue(
    table.requiresPsav,
    value,
  );

  _i1.ColumnValue<String, String> psavName(String? value) => _i1.ColumnValue(
    table.psavName,
    value,
  );

  _i1.ColumnValue<String, String> psavAuthorityName(String? value) =>
      _i1.ColumnValue(
        table.psavAuthorityName,
        value,
      );

  _i1.ColumnValue<String, String> psavAuthorityUrl(String? value) =>
      _i1.ColumnValue(
        table.psavAuthorityUrl,
        value,
      );

  _i1.ColumnValue<double, double> dailyLimitWithoutCert(double? value) =>
      _i1.ColumnValue(
        table.dailyLimitWithoutCert,
        value,
      );

  _i1.ColumnValue<double, double> monthlyLimitWithoutCert(double? value) =>
      _i1.ColumnValue(
        table.monthlyLimitWithoutCert,
        value,
      );

  _i1.ColumnValue<String, String> limitCurrency(String? value) =>
      _i1.ColumnValue(
        table.limitCurrency,
        value,
      );

  _i1.ColumnValue<String, String> supportedCurrencies(String value) =>
      _i1.ColumnValue(
        table.supportedCurrencies,
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

  _i1.ColumnValue<String, String> dateFormat(String value) => _i1.ColumnValue(
    table.dateFormat,
    value,
  );

  _i1.ColumnValue<String, String> numberFormat(String value) => _i1.ColumnValue(
    table.numberFormat,
    value,
  );

  _i1.ColumnValue<bool, bool> isActive(bool value) => _i1.ColumnValue(
    table.isActive,
    value,
  );

  _i1.ColumnValue<bool, bool> comingSoon(bool value) => _i1.ColumnValue(
    table.comingSoon,
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

class CountryConfigTable extends _i1.Table<int?> {
  CountryConfigTable({super.tableRelation})
    : super(tableName: 'country_configs') {
    updateTable = CountryConfigUpdateTable(this);
    countryCode = _i1.ColumnString(
      'countryCode',
      this,
    );
    countryName = _i1.ColumnString(
      'countryName',
      this,
    );
    requiresPsav = _i1.ColumnBool(
      'requiresPsav',
      this,
    );
    psavName = _i1.ColumnString(
      'psavName',
      this,
    );
    psavAuthorityName = _i1.ColumnString(
      'psavAuthorityName',
      this,
    );
    psavAuthorityUrl = _i1.ColumnString(
      'psavAuthorityUrl',
      this,
    );
    dailyLimitWithoutCert = _i1.ColumnDouble(
      'dailyLimitWithoutCert',
      this,
    );
    monthlyLimitWithoutCert = _i1.ColumnDouble(
      'monthlyLimitWithoutCert',
      this,
    );
    limitCurrency = _i1.ColumnString(
      'limitCurrency',
      this,
    );
    supportedCurrencies = _i1.ColumnString(
      'supportedCurrencies',
      this,
    );
    primaryCurrency = _i1.ColumnString(
      'primaryCurrency',
      this,
    );
    timezone = _i1.ColumnString(
      'timezone',
      this,
    );
    dateFormat = _i1.ColumnString(
      'dateFormat',
      this,
    );
    numberFormat = _i1.ColumnString(
      'numberFormat',
      this,
    );
    isActive = _i1.ColumnBool(
      'isActive',
      this,
      hasDefault: true,
    );
    comingSoon = _i1.ColumnBool(
      'comingSoon',
      this,
      hasDefault: true,
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

  late final CountryConfigUpdateTable updateTable;

  late final _i1.ColumnString countryCode;

  late final _i1.ColumnString countryName;

  late final _i1.ColumnBool requiresPsav;

  late final _i1.ColumnString psavName;

  late final _i1.ColumnString psavAuthorityName;

  late final _i1.ColumnString psavAuthorityUrl;

  late final _i1.ColumnDouble dailyLimitWithoutCert;

  late final _i1.ColumnDouble monthlyLimitWithoutCert;

  late final _i1.ColumnString limitCurrency;

  late final _i1.ColumnString supportedCurrencies;

  late final _i1.ColumnString primaryCurrency;

  late final _i1.ColumnString timezone;

  late final _i1.ColumnString dateFormat;

  late final _i1.ColumnString numberFormat;

  late final _i1.ColumnBool isActive;

  late final _i1.ColumnBool comingSoon;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    countryCode,
    countryName,
    requiresPsav,
    psavName,
    psavAuthorityName,
    psavAuthorityUrl,
    dailyLimitWithoutCert,
    monthlyLimitWithoutCert,
    limitCurrency,
    supportedCurrencies,
    primaryCurrency,
    timezone,
    dateFormat,
    numberFormat,
    isActive,
    comingSoon,
    createdAt,
    updatedAt,
  ];
}

class CountryConfigInclude extends _i1.IncludeObject {
  CountryConfigInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => CountryConfig.t;
}

class CountryConfigIncludeList extends _i1.IncludeList {
  CountryConfigIncludeList._({
    _i1.WhereExpressionBuilder<CountryConfigTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CountryConfig.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => CountryConfig.t;
}

class CountryConfigRepository {
  const CountryConfigRepository._();

  /// Returns a list of [CountryConfig]s matching the given query parameters.
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
  Future<List<CountryConfig>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryConfigTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryConfigTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryConfigTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<CountryConfig>(
      where: where?.call(CountryConfig.t),
      orderBy: orderBy?.call(CountryConfig.t),
      orderByList: orderByList?.call(CountryConfig.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [CountryConfig] matching the given query parameters.
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
  Future<CountryConfig?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryConfigTable>? where,
    int? offset,
    _i1.OrderByBuilder<CountryConfigTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryConfigTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<CountryConfig>(
      where: where?.call(CountryConfig.t),
      orderBy: orderBy?.call(CountryConfig.t),
      orderByList: orderByList?.call(CountryConfig.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [CountryConfig] by its [id] or null if no such row exists.
  Future<CountryConfig?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<CountryConfig>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [CountryConfig]s in the list and returns the inserted rows.
  ///
  /// The returned [CountryConfig]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<CountryConfig>> insert(
    _i1.Session session,
    List<CountryConfig> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<CountryConfig>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [CountryConfig] and returns the inserted row.
  ///
  /// The returned [CountryConfig] will have its `id` field set.
  Future<CountryConfig> insertRow(
    _i1.Session session,
    CountryConfig row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<CountryConfig>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [CountryConfig]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<CountryConfig>> update(
    _i1.Session session,
    List<CountryConfig> rows, {
    _i1.ColumnSelections<CountryConfigTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<CountryConfig>(
      rows,
      columns: columns?.call(CountryConfig.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CountryConfig]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CountryConfig> updateRow(
    _i1.Session session,
    CountryConfig row, {
    _i1.ColumnSelections<CountryConfigTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<CountryConfig>(
      row,
      columns: columns?.call(CountryConfig.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CountryConfig] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CountryConfig?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<CountryConfigUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<CountryConfig>(
      id,
      columnValues: columnValues(CountryConfig.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CountryConfig]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<CountryConfig>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<CountryConfigUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<CountryConfigTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryConfigTable>? orderBy,
    _i1.OrderByListBuilder<CountryConfigTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<CountryConfig>(
      columnValues: columnValues(CountryConfig.t.updateTable),
      where: where(CountryConfig.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CountryConfig.t),
      orderByList: orderByList?.call(CountryConfig.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [CountryConfig]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<CountryConfig>> delete(
    _i1.Session session,
    List<CountryConfig> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CountryConfig>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [CountryConfig].
  Future<CountryConfig> deleteRow(
    _i1.Session session,
    CountryConfig row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CountryConfig>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<CountryConfig>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CountryConfigTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<CountryConfig>(
      where: where(CountryConfig.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryConfigTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<CountryConfig>(
      where: where?.call(CountryConfig.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
