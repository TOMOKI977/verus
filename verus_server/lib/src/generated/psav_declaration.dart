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

abstract class PsavDeclaration
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PsavDeclarationTable();

  static const db = PsavDeclarationRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static PsavDeclarationInclude include() {
    return PsavDeclarationInclude._();
  }

  static PsavDeclarationIncludeList includeList({
    _i1.WhereExpressionBuilder<PsavDeclarationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PsavDeclarationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PsavDeclarationTable>? orderByList,
    PsavDeclarationInclude? include,
  }) {
    return PsavDeclarationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PsavDeclaration.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PsavDeclaration.t),
      include: include,
    );
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

class PsavDeclarationUpdateTable extends _i1.UpdateTable<PsavDeclarationTable> {
  PsavDeclarationUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> declarationType(String value) =>
      _i1.ColumnValue(
        table.declarationType,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> periodStart(DateTime value) =>
      _i1.ColumnValue(
        table.periodStart,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> periodEnd(DateTime value) =>
      _i1.ColumnValue(
        table.periodEnd,
        value,
      );

  _i1.ColumnValue<String, String> country(String value) => _i1.ColumnValue(
    table.country,
    value,
  );

  _i1.ColumnValue<int, int> totalTransactions(int value) => _i1.ColumnValue(
    table.totalTransactions,
    value,
  );

  _i1.ColumnValue<double, double> totalVolumeUsdt(double value) =>
      _i1.ColumnValue(
        table.totalVolumeUsdt,
        value,
      );

  _i1.ColumnValue<double, double> totalVolumeLocal(double value) =>
      _i1.ColumnValue(
        table.totalVolumeLocal,
        value,
      );

  _i1.ColumnValue<String, String> localCurrency(String value) =>
      _i1.ColumnValue(
        table.localCurrency,
        value,
      );

  _i1.ColumnValue<String, String> reportPdfUrl(String? value) =>
      _i1.ColumnValue(
        table.reportPdfUrl,
        value,
      );

  _i1.ColumnValue<String, String> officialFormUrl(String? value) =>
      _i1.ColumnValue(
        table.officialFormUrl,
        value,
      );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> submittedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.submittedAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> responseAt(DateTime? value) =>
      _i1.ColumnValue(
        table.responseAt,
        value,
      );

  _i1.ColumnValue<String, String> responseNotes(String? value) =>
      _i1.ColumnValue(
        table.responseNotes,
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

class PsavDeclarationTable extends _i1.Table<int?> {
  PsavDeclarationTable({super.tableRelation})
    : super(tableName: 'psav_declarations') {
    updateTable = PsavDeclarationUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    declarationType = _i1.ColumnString(
      'declarationType',
      this,
    );
    periodStart = _i1.ColumnDateTime(
      'periodStart',
      this,
    );
    periodEnd = _i1.ColumnDateTime(
      'periodEnd',
      this,
    );
    country = _i1.ColumnString(
      'country',
      this,
    );
    totalTransactions = _i1.ColumnInt(
      'totalTransactions',
      this,
    );
    totalVolumeUsdt = _i1.ColumnDouble(
      'totalVolumeUsdt',
      this,
    );
    totalVolumeLocal = _i1.ColumnDouble(
      'totalVolumeLocal',
      this,
    );
    localCurrency = _i1.ColumnString(
      'localCurrency',
      this,
    );
    reportPdfUrl = _i1.ColumnString(
      'reportPdfUrl',
      this,
    );
    officialFormUrl = _i1.ColumnString(
      'officialFormUrl',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    submittedAt = _i1.ColumnDateTime(
      'submittedAt',
      this,
    );
    responseAt = _i1.ColumnDateTime(
      'responseAt',
      this,
    );
    responseNotes = _i1.ColumnString(
      'responseNotes',
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

  late final PsavDeclarationUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString declarationType;

  late final _i1.ColumnDateTime periodStart;

  late final _i1.ColumnDateTime periodEnd;

  late final _i1.ColumnString country;

  late final _i1.ColumnInt totalTransactions;

  late final _i1.ColumnDouble totalVolumeUsdt;

  late final _i1.ColumnDouble totalVolumeLocal;

  late final _i1.ColumnString localCurrency;

  late final _i1.ColumnString reportPdfUrl;

  late final _i1.ColumnString officialFormUrl;

  late final _i1.ColumnString status;

  late final _i1.ColumnDateTime submittedAt;

  late final _i1.ColumnDateTime responseAt;

  late final _i1.ColumnString responseNotes;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    declarationType,
    periodStart,
    periodEnd,
    country,
    totalTransactions,
    totalVolumeUsdt,
    totalVolumeLocal,
    localCurrency,
    reportPdfUrl,
    officialFormUrl,
    status,
    submittedAt,
    responseAt,
    responseNotes,
    createdAt,
    updatedAt,
  ];
}

class PsavDeclarationInclude extends _i1.IncludeObject {
  PsavDeclarationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PsavDeclaration.t;
}

class PsavDeclarationIncludeList extends _i1.IncludeList {
  PsavDeclarationIncludeList._({
    _i1.WhereExpressionBuilder<PsavDeclarationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PsavDeclaration.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PsavDeclaration.t;
}

class PsavDeclarationRepository {
  const PsavDeclarationRepository._();

  /// Returns a list of [PsavDeclaration]s matching the given query parameters.
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
  Future<List<PsavDeclaration>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PsavDeclarationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PsavDeclarationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PsavDeclarationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PsavDeclaration>(
      where: where?.call(PsavDeclaration.t),
      orderBy: orderBy?.call(PsavDeclaration.t),
      orderByList: orderByList?.call(PsavDeclaration.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PsavDeclaration] matching the given query parameters.
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
  Future<PsavDeclaration?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PsavDeclarationTable>? where,
    int? offset,
    _i1.OrderByBuilder<PsavDeclarationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PsavDeclarationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PsavDeclaration>(
      where: where?.call(PsavDeclaration.t),
      orderBy: orderBy?.call(PsavDeclaration.t),
      orderByList: orderByList?.call(PsavDeclaration.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PsavDeclaration] by its [id] or null if no such row exists.
  Future<PsavDeclaration?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PsavDeclaration>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PsavDeclaration]s in the list and returns the inserted rows.
  ///
  /// The returned [PsavDeclaration]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PsavDeclaration>> insert(
    _i1.Session session,
    List<PsavDeclaration> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PsavDeclaration>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PsavDeclaration] and returns the inserted row.
  ///
  /// The returned [PsavDeclaration] will have its `id` field set.
  Future<PsavDeclaration> insertRow(
    _i1.Session session,
    PsavDeclaration row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PsavDeclaration>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PsavDeclaration]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PsavDeclaration>> update(
    _i1.Session session,
    List<PsavDeclaration> rows, {
    _i1.ColumnSelections<PsavDeclarationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PsavDeclaration>(
      rows,
      columns: columns?.call(PsavDeclaration.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PsavDeclaration]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PsavDeclaration> updateRow(
    _i1.Session session,
    PsavDeclaration row, {
    _i1.ColumnSelections<PsavDeclarationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PsavDeclaration>(
      row,
      columns: columns?.call(PsavDeclaration.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PsavDeclaration] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PsavDeclaration?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PsavDeclarationUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PsavDeclaration>(
      id,
      columnValues: columnValues(PsavDeclaration.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PsavDeclaration]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PsavDeclaration>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PsavDeclarationUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<PsavDeclarationTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PsavDeclarationTable>? orderBy,
    _i1.OrderByListBuilder<PsavDeclarationTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PsavDeclaration>(
      columnValues: columnValues(PsavDeclaration.t.updateTable),
      where: where(PsavDeclaration.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PsavDeclaration.t),
      orderByList: orderByList?.call(PsavDeclaration.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PsavDeclaration]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PsavDeclaration>> delete(
    _i1.Session session,
    List<PsavDeclaration> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PsavDeclaration>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PsavDeclaration].
  Future<PsavDeclaration> deleteRow(
    _i1.Session session,
    PsavDeclaration row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PsavDeclaration>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PsavDeclaration>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PsavDeclarationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PsavDeclaration>(
      where: where(PsavDeclaration.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PsavDeclarationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PsavDeclaration>(
      where: where?.call(PsavDeclaration.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
