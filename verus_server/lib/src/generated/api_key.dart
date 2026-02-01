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

abstract class ApiKey implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = ApiKeyTable();

  static const db = ApiKeyRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static ApiKeyInclude include() {
    return ApiKeyInclude._();
  }

  static ApiKeyIncludeList includeList({
    _i1.WhereExpressionBuilder<ApiKeyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ApiKeyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ApiKeyTable>? orderByList,
    ApiKeyInclude? include,
  }) {
    return ApiKeyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ApiKey.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ApiKey.t),
      include: include,
    );
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

class ApiKeyUpdateTable extends _i1.UpdateTable<ApiKeyTable> {
  ApiKeyUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> exchangeName(String value) => _i1.ColumnValue(
    table.exchangeName,
    value,
  );

  _i1.ColumnValue<String, String> apiKeyEncrypted(String value) =>
      _i1.ColumnValue(
        table.apiKeyEncrypted,
        value,
      );

  _i1.ColumnValue<String, String> apiSecretEncrypted(String? value) =>
      _i1.ColumnValue(
        table.apiSecretEncrypted,
        value,
      );

  _i1.ColumnValue<String, String> passphraseEncrypted(String? value) =>
      _i1.ColumnValue(
        table.passphraseEncrypted,
        value,
      );

  _i1.ColumnValue<bool, bool> autoSyncEnabled(bool value) => _i1.ColumnValue(
    table.autoSyncEnabled,
    value,
  );

  _i1.ColumnValue<String, String> syncFrequency(String value) =>
      _i1.ColumnValue(
        table.syncFrequency,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> lastSyncAt(DateTime? value) =>
      _i1.ColumnValue(
        table.lastSyncAt,
        value,
      );

  _i1.ColumnValue<String, String> syncStatus(String value) => _i1.ColumnValue(
    table.syncStatus,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
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

class ApiKeyTable extends _i1.Table<int?> {
  ApiKeyTable({super.tableRelation}) : super(tableName: 'api_keys') {
    updateTable = ApiKeyUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    exchangeName = _i1.ColumnString(
      'exchangeName',
      this,
    );
    apiKeyEncrypted = _i1.ColumnString(
      'apiKeyEncrypted',
      this,
    );
    apiSecretEncrypted = _i1.ColumnString(
      'apiSecretEncrypted',
      this,
    );
    passphraseEncrypted = _i1.ColumnString(
      'passphraseEncrypted',
      this,
    );
    autoSyncEnabled = _i1.ColumnBool(
      'autoSyncEnabled',
      this,
      hasDefault: true,
    );
    syncFrequency = _i1.ColumnString(
      'syncFrequency',
      this,
      hasDefault: true,
    );
    lastSyncAt = _i1.ColumnDateTime(
      'lastSyncAt',
      this,
    );
    syncStatus = _i1.ColumnString(
      'syncStatus',
      this,
      hasDefault: true,
    );
    status = _i1.ColumnString(
      'status',
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

  late final ApiKeyUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString exchangeName;

  late final _i1.ColumnString apiKeyEncrypted;

  late final _i1.ColumnString apiSecretEncrypted;

  late final _i1.ColumnString passphraseEncrypted;

  late final _i1.ColumnBool autoSyncEnabled;

  late final _i1.ColumnString syncFrequency;

  late final _i1.ColumnDateTime lastSyncAt;

  late final _i1.ColumnString syncStatus;

  late final _i1.ColumnString status;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    exchangeName,
    apiKeyEncrypted,
    apiSecretEncrypted,
    passphraseEncrypted,
    autoSyncEnabled,
    syncFrequency,
    lastSyncAt,
    syncStatus,
    status,
    createdAt,
    updatedAt,
  ];
}

class ApiKeyInclude extends _i1.IncludeObject {
  ApiKeyInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ApiKey.t;
}

class ApiKeyIncludeList extends _i1.IncludeList {
  ApiKeyIncludeList._({
    _i1.WhereExpressionBuilder<ApiKeyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ApiKey.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ApiKey.t;
}

class ApiKeyRepository {
  const ApiKeyRepository._();

  /// Returns a list of [ApiKey]s matching the given query parameters.
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
  Future<List<ApiKey>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ApiKeyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ApiKeyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ApiKeyTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ApiKey>(
      where: where?.call(ApiKey.t),
      orderBy: orderBy?.call(ApiKey.t),
      orderByList: orderByList?.call(ApiKey.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [ApiKey] matching the given query parameters.
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
  Future<ApiKey?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ApiKeyTable>? where,
    int? offset,
    _i1.OrderByBuilder<ApiKeyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ApiKeyTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ApiKey>(
      where: where?.call(ApiKey.t),
      orderBy: orderBy?.call(ApiKey.t),
      orderByList: orderByList?.call(ApiKey.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [ApiKey] by its [id] or null if no such row exists.
  Future<ApiKey?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ApiKey>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [ApiKey]s in the list and returns the inserted rows.
  ///
  /// The returned [ApiKey]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<ApiKey>> insert(
    _i1.Session session,
    List<ApiKey> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ApiKey>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [ApiKey] and returns the inserted row.
  ///
  /// The returned [ApiKey] will have its `id` field set.
  Future<ApiKey> insertRow(
    _i1.Session session,
    ApiKey row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ApiKey>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ApiKey]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ApiKey>> update(
    _i1.Session session,
    List<ApiKey> rows, {
    _i1.ColumnSelections<ApiKeyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ApiKey>(
      rows,
      columns: columns?.call(ApiKey.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ApiKey]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ApiKey> updateRow(
    _i1.Session session,
    ApiKey row, {
    _i1.ColumnSelections<ApiKeyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ApiKey>(
      row,
      columns: columns?.call(ApiKey.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ApiKey] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ApiKey?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ApiKeyUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ApiKey>(
      id,
      columnValues: columnValues(ApiKey.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ApiKey]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ApiKey>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ApiKeyUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ApiKeyTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ApiKeyTable>? orderBy,
    _i1.OrderByListBuilder<ApiKeyTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ApiKey>(
      columnValues: columnValues(ApiKey.t.updateTable),
      where: where(ApiKey.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ApiKey.t),
      orderByList: orderByList?.call(ApiKey.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ApiKey]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ApiKey>> delete(
    _i1.Session session,
    List<ApiKey> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ApiKey>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ApiKey].
  Future<ApiKey> deleteRow(
    _i1.Session session,
    ApiKey row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ApiKey>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ApiKey>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ApiKeyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ApiKey>(
      where: where(ApiKey.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ApiKeyTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ApiKey>(
      where: where?.call(ApiKey.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
