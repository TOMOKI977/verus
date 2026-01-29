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

abstract class SyncJob
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = SyncJobTable();

  static const db = SyncJobRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static SyncJobInclude include() {
    return SyncJobInclude._();
  }

  static SyncJobIncludeList includeList({
    _i1.WhereExpressionBuilder<SyncJobTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SyncJobTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SyncJobTable>? orderByList,
    SyncJobInclude? include,
  }) {
    return SyncJobIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SyncJob.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SyncJob.t),
      include: include,
    );
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

class SyncJobUpdateTable extends _i1.UpdateTable<SyncJobTable> {
  SyncJobUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> apiKeyId(int value) => _i1.ColumnValue(
    table.apiKeyId,
    value,
  );

  _i1.ColumnValue<String, String> jobId(String value) => _i1.ColumnValue(
    table.jobId,
    value,
  );

  _i1.ColumnValue<String, String> jobType(String value) => _i1.ColumnValue(
    table.jobType,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<int, int> totalTransactions(int value) => _i1.ColumnValue(
    table.totalTransactions,
    value,
  );

  _i1.ColumnValue<int, int> processedTransactions(int value) => _i1.ColumnValue(
    table.processedTransactions,
    value,
  );

  _i1.ColumnValue<int, int> newTransactions(int value) => _i1.ColumnValue(
    table.newTransactions,
    value,
  );

  _i1.ColumnValue<int, int> updatedTransactions(int value) => _i1.ColumnValue(
    table.updatedTransactions,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> startedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.startedAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> completedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.completedAt,
        value,
      );

  _i1.ColumnValue<int, int> durationSeconds(int? value) => _i1.ColumnValue(
    table.durationSeconds,
    value,
  );

  _i1.ColumnValue<String, String> errorMessage(String? value) =>
      _i1.ColumnValue(
        table.errorMessage,
        value,
      );

  _i1.ColumnValue<String, String> errorDetails(String? value) =>
      _i1.ColumnValue(
        table.errorDetails,
        value,
      );

  _i1.ColumnValue<int, int> retryCount(int value) => _i1.ColumnValue(
    table.retryCount,
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

class SyncJobTable extends _i1.Table<int?> {
  SyncJobTable({super.tableRelation}) : super(tableName: 'sync_jobs') {
    updateTable = SyncJobUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    apiKeyId = _i1.ColumnInt(
      'apiKeyId',
      this,
    );
    jobId = _i1.ColumnString(
      'jobId',
      this,
    );
    jobType = _i1.ColumnString(
      'jobType',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    totalTransactions = _i1.ColumnInt(
      'totalTransactions',
      this,
      hasDefault: true,
    );
    processedTransactions = _i1.ColumnInt(
      'processedTransactions',
      this,
      hasDefault: true,
    );
    newTransactions = _i1.ColumnInt(
      'newTransactions',
      this,
      hasDefault: true,
    );
    updatedTransactions = _i1.ColumnInt(
      'updatedTransactions',
      this,
      hasDefault: true,
    );
    startedAt = _i1.ColumnDateTime(
      'startedAt',
      this,
    );
    completedAt = _i1.ColumnDateTime(
      'completedAt',
      this,
    );
    durationSeconds = _i1.ColumnInt(
      'durationSeconds',
      this,
    );
    errorMessage = _i1.ColumnString(
      'errorMessage',
      this,
    );
    errorDetails = _i1.ColumnString(
      'errorDetails',
      this,
    );
    retryCount = _i1.ColumnInt(
      'retryCount',
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

  late final SyncJobUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt apiKeyId;

  late final _i1.ColumnString jobId;

  late final _i1.ColumnString jobType;

  late final _i1.ColumnString status;

  late final _i1.ColumnInt totalTransactions;

  late final _i1.ColumnInt processedTransactions;

  late final _i1.ColumnInt newTransactions;

  late final _i1.ColumnInt updatedTransactions;

  late final _i1.ColumnDateTime startedAt;

  late final _i1.ColumnDateTime completedAt;

  late final _i1.ColumnInt durationSeconds;

  late final _i1.ColumnString errorMessage;

  late final _i1.ColumnString errorDetails;

  late final _i1.ColumnInt retryCount;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    apiKeyId,
    jobId,
    jobType,
    status,
    totalTransactions,
    processedTransactions,
    newTransactions,
    updatedTransactions,
    startedAt,
    completedAt,
    durationSeconds,
    errorMessage,
    errorDetails,
    retryCount,
    createdAt,
    updatedAt,
  ];
}

class SyncJobInclude extends _i1.IncludeObject {
  SyncJobInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => SyncJob.t;
}

class SyncJobIncludeList extends _i1.IncludeList {
  SyncJobIncludeList._({
    _i1.WhereExpressionBuilder<SyncJobTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SyncJob.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => SyncJob.t;
}

class SyncJobRepository {
  const SyncJobRepository._();

  /// Returns a list of [SyncJob]s matching the given query parameters.
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
  Future<List<SyncJob>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SyncJobTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SyncJobTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SyncJobTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SyncJob>(
      where: where?.call(SyncJob.t),
      orderBy: orderBy?.call(SyncJob.t),
      orderByList: orderByList?.call(SyncJob.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [SyncJob] matching the given query parameters.
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
  Future<SyncJob?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SyncJobTable>? where,
    int? offset,
    _i1.OrderByBuilder<SyncJobTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SyncJobTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<SyncJob>(
      where: where?.call(SyncJob.t),
      orderBy: orderBy?.call(SyncJob.t),
      orderByList: orderByList?.call(SyncJob.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [SyncJob] by its [id] or null if no such row exists.
  Future<SyncJob?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<SyncJob>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [SyncJob]s in the list and returns the inserted rows.
  ///
  /// The returned [SyncJob]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<SyncJob>> insert(
    _i1.Session session,
    List<SyncJob> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<SyncJob>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [SyncJob] and returns the inserted row.
  ///
  /// The returned [SyncJob] will have its `id` field set.
  Future<SyncJob> insertRow(
    _i1.Session session,
    SyncJob row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<SyncJob>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [SyncJob]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<SyncJob>> update(
    _i1.Session session,
    List<SyncJob> rows, {
    _i1.ColumnSelections<SyncJobTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<SyncJob>(
      rows,
      columns: columns?.call(SyncJob.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SyncJob]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SyncJob> updateRow(
    _i1.Session session,
    SyncJob row, {
    _i1.ColumnSelections<SyncJobTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<SyncJob>(
      row,
      columns: columns?.call(SyncJob.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SyncJob] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SyncJob?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<SyncJobUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<SyncJob>(
      id,
      columnValues: columnValues(SyncJob.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SyncJob]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<SyncJob>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<SyncJobUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<SyncJobTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SyncJobTable>? orderBy,
    _i1.OrderByListBuilder<SyncJobTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<SyncJob>(
      columnValues: columnValues(SyncJob.t.updateTable),
      where: where(SyncJob.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SyncJob.t),
      orderByList: orderByList?.call(SyncJob.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [SyncJob]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<SyncJob>> delete(
    _i1.Session session,
    List<SyncJob> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SyncJob>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [SyncJob].
  Future<SyncJob> deleteRow(
    _i1.Session session,
    SyncJob row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SyncJob>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<SyncJob>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SyncJobTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<SyncJob>(
      where: where(SyncJob.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SyncJobTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SyncJob>(
      where: where?.call(SyncJob.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
