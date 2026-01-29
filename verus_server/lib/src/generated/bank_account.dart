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

abstract class BankAccount
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  BankAccount._({
    this.id,
    required this.userId,
    required this.providerName,
    required this.accountIdentifier,
    required this.accountType,
    this.accountHolderName,
    required this.currency,
    required this.country,
    bool? isWallet,
    this.qrAlias,
    bool? isVerified,
    this.verificationMethod,
    this.verifiedAt,
    String? status,
    this.notes,
    required this.connectedAt,
    this.lastUsedAt,
    required this.createdAt,
    required this.updatedAt,
  }) : isWallet = isWallet ?? false,
       isVerified = isVerified ?? false,
       status = status ?? 'active';

  factory BankAccount({
    int? id,
    required int userId,
    required String providerName,
    required String accountIdentifier,
    required String accountType,
    String? accountHolderName,
    required String currency,
    required String country,
    bool? isWallet,
    String? qrAlias,
    bool? isVerified,
    String? verificationMethod,
    DateTime? verifiedAt,
    String? status,
    String? notes,
    required DateTime connectedAt,
    DateTime? lastUsedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _BankAccountImpl;

  factory BankAccount.fromJson(Map<String, dynamic> jsonSerialization) {
    return BankAccount(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      providerName: jsonSerialization['providerName'] as String,
      accountIdentifier: jsonSerialization['accountIdentifier'] as String,
      accountType: jsonSerialization['accountType'] as String,
      accountHolderName: jsonSerialization['accountHolderName'] as String?,
      currency: jsonSerialization['currency'] as String,
      country: jsonSerialization['country'] as String,
      isWallet: jsonSerialization['isWallet'] as bool?,
      qrAlias: jsonSerialization['qrAlias'] as String?,
      isVerified: jsonSerialization['isVerified'] as bool?,
      verificationMethod: jsonSerialization['verificationMethod'] as String?,
      verifiedAt: jsonSerialization['verifiedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['verifiedAt']),
      status: jsonSerialization['status'] as String?,
      notes: jsonSerialization['notes'] as String?,
      connectedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['connectedAt'],
      ),
      lastUsedAt: jsonSerialization['lastUsedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['lastUsedAt']),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  static final t = BankAccountTable();

  static const db = BankAccountRepository._();

  @override
  int? id;

  int userId;

  String providerName;

  String accountIdentifier;

  String accountType;

  String? accountHolderName;

  String currency;

  String country;

  bool isWallet;

  String? qrAlias;

  bool isVerified;

  String? verificationMethod;

  DateTime? verifiedAt;

  String status;

  String? notes;

  DateTime connectedAt;

  DateTime? lastUsedAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [BankAccount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  BankAccount copyWith({
    int? id,
    int? userId,
    String? providerName,
    String? accountIdentifier,
    String? accountType,
    String? accountHolderName,
    String? currency,
    String? country,
    bool? isWallet,
    String? qrAlias,
    bool? isVerified,
    String? verificationMethod,
    DateTime? verifiedAt,
    String? status,
    String? notes,
    DateTime? connectedAt,
    DateTime? lastUsedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'BankAccount',
      if (id != null) 'id': id,
      'userId': userId,
      'providerName': providerName,
      'accountIdentifier': accountIdentifier,
      'accountType': accountType,
      if (accountHolderName != null) 'accountHolderName': accountHolderName,
      'currency': currency,
      'country': country,
      'isWallet': isWallet,
      if (qrAlias != null) 'qrAlias': qrAlias,
      'isVerified': isVerified,
      if (verificationMethod != null) 'verificationMethod': verificationMethod,
      if (verifiedAt != null) 'verifiedAt': verifiedAt?.toJson(),
      'status': status,
      if (notes != null) 'notes': notes,
      'connectedAt': connectedAt.toJson(),
      if (lastUsedAt != null) 'lastUsedAt': lastUsedAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'BankAccount',
      if (id != null) 'id': id,
      'userId': userId,
      'providerName': providerName,
      'accountIdentifier': accountIdentifier,
      'accountType': accountType,
      if (accountHolderName != null) 'accountHolderName': accountHolderName,
      'currency': currency,
      'country': country,
      'isWallet': isWallet,
      if (qrAlias != null) 'qrAlias': qrAlias,
      'isVerified': isVerified,
      if (verificationMethod != null) 'verificationMethod': verificationMethod,
      if (verifiedAt != null) 'verifiedAt': verifiedAt?.toJson(),
      'status': status,
      if (notes != null) 'notes': notes,
      'connectedAt': connectedAt.toJson(),
      if (lastUsedAt != null) 'lastUsedAt': lastUsedAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static BankAccountInclude include() {
    return BankAccountInclude._();
  }

  static BankAccountIncludeList includeList({
    _i1.WhereExpressionBuilder<BankAccountTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BankAccountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BankAccountTable>? orderByList,
    BankAccountInclude? include,
  }) {
    return BankAccountIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BankAccount.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BankAccount.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BankAccountImpl extends BankAccount {
  _BankAccountImpl({
    int? id,
    required int userId,
    required String providerName,
    required String accountIdentifier,
    required String accountType,
    String? accountHolderName,
    required String currency,
    required String country,
    bool? isWallet,
    String? qrAlias,
    bool? isVerified,
    String? verificationMethod,
    DateTime? verifiedAt,
    String? status,
    String? notes,
    required DateTime connectedAt,
    DateTime? lastUsedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         providerName: providerName,
         accountIdentifier: accountIdentifier,
         accountType: accountType,
         accountHolderName: accountHolderName,
         currency: currency,
         country: country,
         isWallet: isWallet,
         qrAlias: qrAlias,
         isVerified: isVerified,
         verificationMethod: verificationMethod,
         verifiedAt: verifiedAt,
         status: status,
         notes: notes,
         connectedAt: connectedAt,
         lastUsedAt: lastUsedAt,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [BankAccount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  BankAccount copyWith({
    Object? id = _Undefined,
    int? userId,
    String? providerName,
    String? accountIdentifier,
    String? accountType,
    Object? accountHolderName = _Undefined,
    String? currency,
    String? country,
    bool? isWallet,
    Object? qrAlias = _Undefined,
    bool? isVerified,
    Object? verificationMethod = _Undefined,
    Object? verifiedAt = _Undefined,
    String? status,
    Object? notes = _Undefined,
    DateTime? connectedAt,
    Object? lastUsedAt = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return BankAccount(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      providerName: providerName ?? this.providerName,
      accountIdentifier: accountIdentifier ?? this.accountIdentifier,
      accountType: accountType ?? this.accountType,
      accountHolderName: accountHolderName is String?
          ? accountHolderName
          : this.accountHolderName,
      currency: currency ?? this.currency,
      country: country ?? this.country,
      isWallet: isWallet ?? this.isWallet,
      qrAlias: qrAlias is String? ? qrAlias : this.qrAlias,
      isVerified: isVerified ?? this.isVerified,
      verificationMethod: verificationMethod is String?
          ? verificationMethod
          : this.verificationMethod,
      verifiedAt: verifiedAt is DateTime? ? verifiedAt : this.verifiedAt,
      status: status ?? this.status,
      notes: notes is String? ? notes : this.notes,
      connectedAt: connectedAt ?? this.connectedAt,
      lastUsedAt: lastUsedAt is DateTime? ? lastUsedAt : this.lastUsedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class BankAccountUpdateTable extends _i1.UpdateTable<BankAccountTable> {
  BankAccountUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> providerName(String value) => _i1.ColumnValue(
    table.providerName,
    value,
  );

  _i1.ColumnValue<String, String> accountIdentifier(String value) =>
      _i1.ColumnValue(
        table.accountIdentifier,
        value,
      );

  _i1.ColumnValue<String, String> accountType(String value) => _i1.ColumnValue(
    table.accountType,
    value,
  );

  _i1.ColumnValue<String, String> accountHolderName(String? value) =>
      _i1.ColumnValue(
        table.accountHolderName,
        value,
      );

  _i1.ColumnValue<String, String> currency(String value) => _i1.ColumnValue(
    table.currency,
    value,
  );

  _i1.ColumnValue<String, String> country(String value) => _i1.ColumnValue(
    table.country,
    value,
  );

  _i1.ColumnValue<bool, bool> isWallet(bool value) => _i1.ColumnValue(
    table.isWallet,
    value,
  );

  _i1.ColumnValue<String, String> qrAlias(String? value) => _i1.ColumnValue(
    table.qrAlias,
    value,
  );

  _i1.ColumnValue<bool, bool> isVerified(bool value) => _i1.ColumnValue(
    table.isVerified,
    value,
  );

  _i1.ColumnValue<String, String> verificationMethod(String? value) =>
      _i1.ColumnValue(
        table.verificationMethod,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> verifiedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.verifiedAt,
        value,
      );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> connectedAt(DateTime value) =>
      _i1.ColumnValue(
        table.connectedAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> lastUsedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.lastUsedAt,
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

class BankAccountTable extends _i1.Table<int?> {
  BankAccountTable({super.tableRelation}) : super(tableName: 'bank_accounts') {
    updateTable = BankAccountUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    providerName = _i1.ColumnString(
      'providerName',
      this,
    );
    accountIdentifier = _i1.ColumnString(
      'accountIdentifier',
      this,
    );
    accountType = _i1.ColumnString(
      'accountType',
      this,
    );
    accountHolderName = _i1.ColumnString(
      'accountHolderName',
      this,
    );
    currency = _i1.ColumnString(
      'currency',
      this,
    );
    country = _i1.ColumnString(
      'country',
      this,
    );
    isWallet = _i1.ColumnBool(
      'isWallet',
      this,
      hasDefault: true,
    );
    qrAlias = _i1.ColumnString(
      'qrAlias',
      this,
    );
    isVerified = _i1.ColumnBool(
      'isVerified',
      this,
      hasDefault: true,
    );
    verificationMethod = _i1.ColumnString(
      'verificationMethod',
      this,
    );
    verifiedAt = _i1.ColumnDateTime(
      'verifiedAt',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
      hasDefault: true,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
    connectedAt = _i1.ColumnDateTime(
      'connectedAt',
      this,
    );
    lastUsedAt = _i1.ColumnDateTime(
      'lastUsedAt',
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

  late final BankAccountUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString providerName;

  late final _i1.ColumnString accountIdentifier;

  late final _i1.ColumnString accountType;

  late final _i1.ColumnString accountHolderName;

  late final _i1.ColumnString currency;

  late final _i1.ColumnString country;

  late final _i1.ColumnBool isWallet;

  late final _i1.ColumnString qrAlias;

  late final _i1.ColumnBool isVerified;

  late final _i1.ColumnString verificationMethod;

  late final _i1.ColumnDateTime verifiedAt;

  late final _i1.ColumnString status;

  late final _i1.ColumnString notes;

  late final _i1.ColumnDateTime connectedAt;

  late final _i1.ColumnDateTime lastUsedAt;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    providerName,
    accountIdentifier,
    accountType,
    accountHolderName,
    currency,
    country,
    isWallet,
    qrAlias,
    isVerified,
    verificationMethod,
    verifiedAt,
    status,
    notes,
    connectedAt,
    lastUsedAt,
    createdAt,
    updatedAt,
  ];
}

class BankAccountInclude extends _i1.IncludeObject {
  BankAccountInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => BankAccount.t;
}

class BankAccountIncludeList extends _i1.IncludeList {
  BankAccountIncludeList._({
    _i1.WhereExpressionBuilder<BankAccountTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BankAccount.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => BankAccount.t;
}

class BankAccountRepository {
  const BankAccountRepository._();

  /// Returns a list of [BankAccount]s matching the given query parameters.
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
  Future<List<BankAccount>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BankAccountTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BankAccountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BankAccountTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<BankAccount>(
      where: where?.call(BankAccount.t),
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [BankAccount] matching the given query parameters.
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
  Future<BankAccount?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BankAccountTable>? where,
    int? offset,
    _i1.OrderByBuilder<BankAccountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BankAccountTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<BankAccount>(
      where: where?.call(BankAccount.t),
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [BankAccount] by its [id] or null if no such row exists.
  Future<BankAccount?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<BankAccount>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [BankAccount]s in the list and returns the inserted rows.
  ///
  /// The returned [BankAccount]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<BankAccount>> insert(
    _i1.Session session,
    List<BankAccount> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<BankAccount>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [BankAccount] and returns the inserted row.
  ///
  /// The returned [BankAccount] will have its `id` field set.
  Future<BankAccount> insertRow(
    _i1.Session session,
    BankAccount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<BankAccount>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [BankAccount]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<BankAccount>> update(
    _i1.Session session,
    List<BankAccount> rows, {
    _i1.ColumnSelections<BankAccountTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<BankAccount>(
      rows,
      columns: columns?.call(BankAccount.t),
      transaction: transaction,
    );
  }

  /// Updates a single [BankAccount]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<BankAccount> updateRow(
    _i1.Session session,
    BankAccount row, {
    _i1.ColumnSelections<BankAccountTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<BankAccount>(
      row,
      columns: columns?.call(BankAccount.t),
      transaction: transaction,
    );
  }

  /// Updates a single [BankAccount] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<BankAccount?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<BankAccountUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<BankAccount>(
      id,
      columnValues: columnValues(BankAccount.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [BankAccount]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<BankAccount>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<BankAccountUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<BankAccountTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BankAccountTable>? orderBy,
    _i1.OrderByListBuilder<BankAccountTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<BankAccount>(
      columnValues: columnValues(BankAccount.t.updateTable),
      where: where(BankAccount.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BankAccount.t),
      orderByList: orderByList?.call(BankAccount.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [BankAccount]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<BankAccount>> delete(
    _i1.Session session,
    List<BankAccount> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BankAccount>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [BankAccount].
  Future<BankAccount> deleteRow(
    _i1.Session session,
    BankAccount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<BankAccount>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<BankAccount>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BankAccountTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<BankAccount>(
      where: where(BankAccount.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BankAccountTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BankAccount>(
      where: where?.call(BankAccount.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
