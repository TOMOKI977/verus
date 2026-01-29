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

abstract class Trans implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Trans._({
    this.id,
    required this.userId,
    required this.apiKeyId,
    required this.orderNumber,
    required this.exchange,
    required this.timestamp,
    required this.cryptoAmountUsdt,
    required this.localAmount,
    required this.localCurrency,
    required this.exchangeRate,
    required this.txType,
    required this.status,
    this.counterpartyName,
    this.counterpartyUserId,
    this.profitUsdt,
    this.profitLocal,
    this.profitMarginPercent,
    this.bankProofUrl,
    bool? hasProof,
    required this.createdAt,
    required this.updatedAt,
  }) : hasProof = hasProof ?? false;

  factory Trans({
    int? id,
    required int userId,
    required int apiKeyId,
    required String orderNumber,
    required String exchange,
    required DateTime timestamp,
    required double cryptoAmountUsdt,
    required double localAmount,
    required String localCurrency,
    required double exchangeRate,
    required String txType,
    required String status,
    String? counterpartyName,
    String? counterpartyUserId,
    double? profitUsdt,
    double? profitLocal,
    double? profitMarginPercent,
    String? bankProofUrl,
    bool? hasProof,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TransImpl;

  factory Trans.fromJson(Map<String, dynamic> jsonSerialization) {
    return Trans(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      apiKeyId: jsonSerialization['apiKeyId'] as int,
      orderNumber: jsonSerialization['orderNumber'] as String,
      exchange: jsonSerialization['exchange'] as String,
      timestamp: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['timestamp'],
      ),
      cryptoAmountUsdt: (jsonSerialization['cryptoAmountUsdt'] as num)
          .toDouble(),
      localAmount: (jsonSerialization['localAmount'] as num).toDouble(),
      localCurrency: jsonSerialization['localCurrency'] as String,
      exchangeRate: (jsonSerialization['exchangeRate'] as num).toDouble(),
      txType: jsonSerialization['txType'] as String,
      status: jsonSerialization['status'] as String,
      counterpartyName: jsonSerialization['counterpartyName'] as String?,
      counterpartyUserId: jsonSerialization['counterpartyUserId'] as String?,
      profitUsdt: (jsonSerialization['profitUsdt'] as num?)?.toDouble(),
      profitLocal: (jsonSerialization['profitLocal'] as num?)?.toDouble(),
      profitMarginPercent: (jsonSerialization['profitMarginPercent'] as num?)
          ?.toDouble(),
      bankProofUrl: jsonSerialization['bankProofUrl'] as String?,
      hasProof: jsonSerialization['hasProof'] as bool?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = TransTable();

  static const db = TransRepository._();

  @override
  int? id;

  int userId;

  int apiKeyId;

  String orderNumber;

  String exchange;

  DateTime timestamp;

  double cryptoAmountUsdt;

  double localAmount;

  String localCurrency;

  double exchangeRate;

  String txType;

  String status;

  String? counterpartyName;

  String? counterpartyUserId;

  double? profitUsdt;

  double? profitLocal;

  double? profitMarginPercent;

  String? bankProofUrl;

  bool hasProof;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Trans]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Trans copyWith({
    int? id,
    int? userId,
    int? apiKeyId,
    String? orderNumber,
    String? exchange,
    DateTime? timestamp,
    double? cryptoAmountUsdt,
    double? localAmount,
    String? localCurrency,
    double? exchangeRate,
    String? txType,
    String? status,
    String? counterpartyName,
    String? counterpartyUserId,
    double? profitUsdt,
    double? profitLocal,
    double? profitMarginPercent,
    String? bankProofUrl,
    bool? hasProof,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Trans',
      if (id != null) 'id': id,
      'userId': userId,
      'apiKeyId': apiKeyId,
      'orderNumber': orderNumber,
      'exchange': exchange,
      'timestamp': timestamp.toJson(),
      'cryptoAmountUsdt': cryptoAmountUsdt,
      'localAmount': localAmount,
      'localCurrency': localCurrency,
      'exchangeRate': exchangeRate,
      'txType': txType,
      'status': status,
      if (counterpartyName != null) 'counterpartyName': counterpartyName,
      if (counterpartyUserId != null) 'counterpartyUserId': counterpartyUserId,
      if (profitUsdt != null) 'profitUsdt': profitUsdt,
      if (profitLocal != null) 'profitLocal': profitLocal,
      if (profitMarginPercent != null)
        'profitMarginPercent': profitMarginPercent,
      if (bankProofUrl != null) 'bankProofUrl': bankProofUrl,
      'hasProof': hasProof,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Trans',
      if (id != null) 'id': id,
      'userId': userId,
      'apiKeyId': apiKeyId,
      'orderNumber': orderNumber,
      'exchange': exchange,
      'timestamp': timestamp.toJson(),
      'cryptoAmountUsdt': cryptoAmountUsdt,
      'localAmount': localAmount,
      'localCurrency': localCurrency,
      'exchangeRate': exchangeRate,
      'txType': txType,
      'status': status,
      if (counterpartyName != null) 'counterpartyName': counterpartyName,
      if (counterpartyUserId != null) 'counterpartyUserId': counterpartyUserId,
      if (profitUsdt != null) 'profitUsdt': profitUsdt,
      if (profitLocal != null) 'profitLocal': profitLocal,
      if (profitMarginPercent != null)
        'profitMarginPercent': profitMarginPercent,
      if (bankProofUrl != null) 'bankProofUrl': bankProofUrl,
      'hasProof': hasProof,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static TransInclude include() {
    return TransInclude._();
  }

  static TransIncludeList includeList({
    _i1.WhereExpressionBuilder<TransTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TransTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TransTable>? orderByList,
    TransInclude? include,
  }) {
    return TransIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Trans.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Trans.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TransImpl extends Trans {
  _TransImpl({
    int? id,
    required int userId,
    required int apiKeyId,
    required String orderNumber,
    required String exchange,
    required DateTime timestamp,
    required double cryptoAmountUsdt,
    required double localAmount,
    required String localCurrency,
    required double exchangeRate,
    required String txType,
    required String status,
    String? counterpartyName,
    String? counterpartyUserId,
    double? profitUsdt,
    double? profitLocal,
    double? profitMarginPercent,
    String? bankProofUrl,
    bool? hasProof,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         apiKeyId: apiKeyId,
         orderNumber: orderNumber,
         exchange: exchange,
         timestamp: timestamp,
         cryptoAmountUsdt: cryptoAmountUsdt,
         localAmount: localAmount,
         localCurrency: localCurrency,
         exchangeRate: exchangeRate,
         txType: txType,
         status: status,
         counterpartyName: counterpartyName,
         counterpartyUserId: counterpartyUserId,
         profitUsdt: profitUsdt,
         profitLocal: profitLocal,
         profitMarginPercent: profitMarginPercent,
         bankProofUrl: bankProofUrl,
         hasProof: hasProof,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Trans]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Trans copyWith({
    Object? id = _Undefined,
    int? userId,
    int? apiKeyId,
    String? orderNumber,
    String? exchange,
    DateTime? timestamp,
    double? cryptoAmountUsdt,
    double? localAmount,
    String? localCurrency,
    double? exchangeRate,
    String? txType,
    String? status,
    Object? counterpartyName = _Undefined,
    Object? counterpartyUserId = _Undefined,
    Object? profitUsdt = _Undefined,
    Object? profitLocal = _Undefined,
    Object? profitMarginPercent = _Undefined,
    Object? bankProofUrl = _Undefined,
    bool? hasProof,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Trans(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      apiKeyId: apiKeyId ?? this.apiKeyId,
      orderNumber: orderNumber ?? this.orderNumber,
      exchange: exchange ?? this.exchange,
      timestamp: timestamp ?? this.timestamp,
      cryptoAmountUsdt: cryptoAmountUsdt ?? this.cryptoAmountUsdt,
      localAmount: localAmount ?? this.localAmount,
      localCurrency: localCurrency ?? this.localCurrency,
      exchangeRate: exchangeRate ?? this.exchangeRate,
      txType: txType ?? this.txType,
      status: status ?? this.status,
      counterpartyName: counterpartyName is String?
          ? counterpartyName
          : this.counterpartyName,
      counterpartyUserId: counterpartyUserId is String?
          ? counterpartyUserId
          : this.counterpartyUserId,
      profitUsdt: profitUsdt is double? ? profitUsdt : this.profitUsdt,
      profitLocal: profitLocal is double? ? profitLocal : this.profitLocal,
      profitMarginPercent: profitMarginPercent is double?
          ? profitMarginPercent
          : this.profitMarginPercent,
      bankProofUrl: bankProofUrl is String? ? bankProofUrl : this.bankProofUrl,
      hasProof: hasProof ?? this.hasProof,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class TransUpdateTable extends _i1.UpdateTable<TransTable> {
  TransUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> apiKeyId(int value) => _i1.ColumnValue(
    table.apiKeyId,
    value,
  );

  _i1.ColumnValue<String, String> orderNumber(String value) => _i1.ColumnValue(
    table.orderNumber,
    value,
  );

  _i1.ColumnValue<String, String> exchange(String value) => _i1.ColumnValue(
    table.exchange,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> timestamp(DateTime value) =>
      _i1.ColumnValue(
        table.timestamp,
        value,
      );

  _i1.ColumnValue<double, double> cryptoAmountUsdt(double value) =>
      _i1.ColumnValue(
        table.cryptoAmountUsdt,
        value,
      );

  _i1.ColumnValue<double, double> localAmount(double value) => _i1.ColumnValue(
    table.localAmount,
    value,
  );

  _i1.ColumnValue<String, String> localCurrency(String value) =>
      _i1.ColumnValue(
        table.localCurrency,
        value,
      );

  _i1.ColumnValue<double, double> exchangeRate(double value) => _i1.ColumnValue(
    table.exchangeRate,
    value,
  );

  _i1.ColumnValue<String, String> txType(String value) => _i1.ColumnValue(
    table.txType,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<String, String> counterpartyName(String? value) =>
      _i1.ColumnValue(
        table.counterpartyName,
        value,
      );

  _i1.ColumnValue<String, String> counterpartyUserId(String? value) =>
      _i1.ColumnValue(
        table.counterpartyUserId,
        value,
      );

  _i1.ColumnValue<double, double> profitUsdt(double? value) => _i1.ColumnValue(
    table.profitUsdt,
    value,
  );

  _i1.ColumnValue<double, double> profitLocal(double? value) => _i1.ColumnValue(
    table.profitLocal,
    value,
  );

  _i1.ColumnValue<double, double> profitMarginPercent(double? value) =>
      _i1.ColumnValue(
        table.profitMarginPercent,
        value,
      );

  _i1.ColumnValue<String, String> bankProofUrl(String? value) =>
      _i1.ColumnValue(
        table.bankProofUrl,
        value,
      );

  _i1.ColumnValue<bool, bool> hasProof(bool value) => _i1.ColumnValue(
    table.hasProof,
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

class TransTable extends _i1.Table<int?> {
  TransTable({super.tableRelation}) : super(tableName: 'transactions') {
    updateTable = TransUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    apiKeyId = _i1.ColumnInt(
      'apiKeyId',
      this,
    );
    orderNumber = _i1.ColumnString(
      'orderNumber',
      this,
    );
    exchange = _i1.ColumnString(
      'exchange',
      this,
    );
    timestamp = _i1.ColumnDateTime(
      'timestamp',
      this,
    );
    cryptoAmountUsdt = _i1.ColumnDouble(
      'cryptoAmountUsdt',
      this,
    );
    localAmount = _i1.ColumnDouble(
      'localAmount',
      this,
    );
    localCurrency = _i1.ColumnString(
      'localCurrency',
      this,
    );
    exchangeRate = _i1.ColumnDouble(
      'exchangeRate',
      this,
    );
    txType = _i1.ColumnString(
      'txType',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    counterpartyName = _i1.ColumnString(
      'counterpartyName',
      this,
    );
    counterpartyUserId = _i1.ColumnString(
      'counterpartyUserId',
      this,
    );
    profitUsdt = _i1.ColumnDouble(
      'profitUsdt',
      this,
    );
    profitLocal = _i1.ColumnDouble(
      'profitLocal',
      this,
    );
    profitMarginPercent = _i1.ColumnDouble(
      'profitMarginPercent',
      this,
    );
    bankProofUrl = _i1.ColumnString(
      'bankProofUrl',
      this,
    );
    hasProof = _i1.ColumnBool(
      'hasProof',
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

  late final TransUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt apiKeyId;

  late final _i1.ColumnString orderNumber;

  late final _i1.ColumnString exchange;

  late final _i1.ColumnDateTime timestamp;

  late final _i1.ColumnDouble cryptoAmountUsdt;

  late final _i1.ColumnDouble localAmount;

  late final _i1.ColumnString localCurrency;

  late final _i1.ColumnDouble exchangeRate;

  late final _i1.ColumnString txType;

  late final _i1.ColumnString status;

  late final _i1.ColumnString counterpartyName;

  late final _i1.ColumnString counterpartyUserId;

  late final _i1.ColumnDouble profitUsdt;

  late final _i1.ColumnDouble profitLocal;

  late final _i1.ColumnDouble profitMarginPercent;

  late final _i1.ColumnString bankProofUrl;

  late final _i1.ColumnBool hasProof;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    apiKeyId,
    orderNumber,
    exchange,
    timestamp,
    cryptoAmountUsdt,
    localAmount,
    localCurrency,
    exchangeRate,
    txType,
    status,
    counterpartyName,
    counterpartyUserId,
    profitUsdt,
    profitLocal,
    profitMarginPercent,
    bankProofUrl,
    hasProof,
    createdAt,
    updatedAt,
  ];
}

class TransInclude extends _i1.IncludeObject {
  TransInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Trans.t;
}

class TransIncludeList extends _i1.IncludeList {
  TransIncludeList._({
    _i1.WhereExpressionBuilder<TransTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Trans.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Trans.t;
}

class TransRepository {
  const TransRepository._();

  /// Returns a list of [Trans]s matching the given query parameters.
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
  Future<List<Trans>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TransTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TransTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TransTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Trans>(
      where: where?.call(Trans.t),
      orderBy: orderBy?.call(Trans.t),
      orderByList: orderByList?.call(Trans.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Trans] matching the given query parameters.
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
  Future<Trans?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TransTable>? where,
    int? offset,
    _i1.OrderByBuilder<TransTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TransTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Trans>(
      where: where?.call(Trans.t),
      orderBy: orderBy?.call(Trans.t),
      orderByList: orderByList?.call(Trans.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Trans] by its [id] or null if no such row exists.
  Future<Trans?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Trans>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Trans]s in the list and returns the inserted rows.
  ///
  /// The returned [Trans]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Trans>> insert(
    _i1.Session session,
    List<Trans> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Trans>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Trans] and returns the inserted row.
  ///
  /// The returned [Trans] will have its `id` field set.
  Future<Trans> insertRow(
    _i1.Session session,
    Trans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Trans>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Trans]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Trans>> update(
    _i1.Session session,
    List<Trans> rows, {
    _i1.ColumnSelections<TransTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Trans>(
      rows,
      columns: columns?.call(Trans.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Trans]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Trans> updateRow(
    _i1.Session session,
    Trans row, {
    _i1.ColumnSelections<TransTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Trans>(
      row,
      columns: columns?.call(Trans.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Trans] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Trans?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<TransUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Trans>(
      id,
      columnValues: columnValues(Trans.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Trans]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Trans>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<TransUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<TransTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TransTable>? orderBy,
    _i1.OrderByListBuilder<TransTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Trans>(
      columnValues: columnValues(Trans.t.updateTable),
      where: where(Trans.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Trans.t),
      orderByList: orderByList?.call(Trans.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Trans]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Trans>> delete(
    _i1.Session session,
    List<Trans> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Trans>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Trans].
  Future<Trans> deleteRow(
    _i1.Session session,
    Trans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Trans>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Trans>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TransTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Trans>(
      where: where(Trans.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TransTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Trans>(
      where: where?.call(Trans.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
