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

abstract class EmailVerification
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  EmailVerification._({
    this.id,
    required this.userId,
    required this.email,
    required this.token,
    bool? isUsed,
    this.usedAt,
    required this.expiresAt,
    required this.createdAt,
  }) : isUsed = isUsed ?? false;

  factory EmailVerification({
    int? id,
    required int userId,
    required String email,
    required String token,
    bool? isUsed,
    DateTime? usedAt,
    required DateTime expiresAt,
    required DateTime createdAt,
  }) = _EmailVerificationImpl;

  factory EmailVerification.fromJson(Map<String, dynamic> jsonSerialization) {
    return EmailVerification(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      email: jsonSerialization['email'] as String,
      token: jsonSerialization['token'] as String,
      isUsed: jsonSerialization['isUsed'] as bool?,
      usedAt: jsonSerialization['usedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['usedAt']),
      expiresAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['expiresAt'],
      ),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  static final t = EmailVerificationTable();

  static const db = EmailVerificationRepository._();

  @override
  int? id;

  int userId;

  String email;

  String token;

  bool isUsed;

  DateTime? usedAt;

  DateTime expiresAt;

  DateTime createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [EmailVerification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  EmailVerification copyWith({
    int? id,
    int? userId,
    String? email,
    String? token,
    bool? isUsed,
    DateTime? usedAt,
    DateTime? expiresAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'EmailVerification',
      if (id != null) 'id': id,
      'userId': userId,
      'email': email,
      'token': token,
      'isUsed': isUsed,
      if (usedAt != null) 'usedAt': usedAt?.toJson(),
      'expiresAt': expiresAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'EmailVerification',
      if (id != null) 'id': id,
      'userId': userId,
      'email': email,
      'token': token,
      'isUsed': isUsed,
      if (usedAt != null) 'usedAt': usedAt?.toJson(),
      'expiresAt': expiresAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  static EmailVerificationInclude include() {
    return EmailVerificationInclude._();
  }

  static EmailVerificationIncludeList includeList({
    _i1.WhereExpressionBuilder<EmailVerificationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmailVerificationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmailVerificationTable>? orderByList,
    EmailVerificationInclude? include,
  }) {
    return EmailVerificationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EmailVerification.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EmailVerification.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _EmailVerificationImpl extends EmailVerification {
  _EmailVerificationImpl({
    int? id,
    required int userId,
    required String email,
    required String token,
    bool? isUsed,
    DateTime? usedAt,
    required DateTime expiresAt,
    required DateTime createdAt,
  }) : super._(
         id: id,
         userId: userId,
         email: email,
         token: token,
         isUsed: isUsed,
         usedAt: usedAt,
         expiresAt: expiresAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [EmailVerification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  EmailVerification copyWith({
    Object? id = _Undefined,
    int? userId,
    String? email,
    String? token,
    bool? isUsed,
    Object? usedAt = _Undefined,
    DateTime? expiresAt,
    DateTime? createdAt,
  }) {
    return EmailVerification(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      email: email ?? this.email,
      token: token ?? this.token,
      isUsed: isUsed ?? this.isUsed,
      usedAt: usedAt is DateTime? ? usedAt : this.usedAt,
      expiresAt: expiresAt ?? this.expiresAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class EmailVerificationUpdateTable
    extends _i1.UpdateTable<EmailVerificationTable> {
  EmailVerificationUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> email(String value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<String, String> token(String value) => _i1.ColumnValue(
    table.token,
    value,
  );

  _i1.ColumnValue<bool, bool> isUsed(bool value) => _i1.ColumnValue(
    table.isUsed,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> usedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.usedAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> expiresAt(DateTime value) =>
      _i1.ColumnValue(
        table.expiresAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class EmailVerificationTable extends _i1.Table<int?> {
  EmailVerificationTable({super.tableRelation})
    : super(tableName: 'email_verifications') {
    updateTable = EmailVerificationUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    token = _i1.ColumnString(
      'token',
      this,
    );
    isUsed = _i1.ColumnBool(
      'isUsed',
      this,
      hasDefault: true,
    );
    usedAt = _i1.ColumnDateTime(
      'usedAt',
      this,
    );
    expiresAt = _i1.ColumnDateTime(
      'expiresAt',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final EmailVerificationUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString email;

  late final _i1.ColumnString token;

  late final _i1.ColumnBool isUsed;

  late final _i1.ColumnDateTime usedAt;

  late final _i1.ColumnDateTime expiresAt;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    email,
    token,
    isUsed,
    usedAt,
    expiresAt,
    createdAt,
  ];
}

class EmailVerificationInclude extends _i1.IncludeObject {
  EmailVerificationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => EmailVerification.t;
}

class EmailVerificationIncludeList extends _i1.IncludeList {
  EmailVerificationIncludeList._({
    _i1.WhereExpressionBuilder<EmailVerificationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EmailVerification.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => EmailVerification.t;
}

class EmailVerificationRepository {
  const EmailVerificationRepository._();

  /// Returns a list of [EmailVerification]s matching the given query parameters.
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
  Future<List<EmailVerification>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmailVerificationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmailVerificationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmailVerificationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<EmailVerification>(
      where: where?.call(EmailVerification.t),
      orderBy: orderBy?.call(EmailVerification.t),
      orderByList: orderByList?.call(EmailVerification.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [EmailVerification] matching the given query parameters.
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
  Future<EmailVerification?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmailVerificationTable>? where,
    int? offset,
    _i1.OrderByBuilder<EmailVerificationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmailVerificationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<EmailVerification>(
      where: where?.call(EmailVerification.t),
      orderBy: orderBy?.call(EmailVerification.t),
      orderByList: orderByList?.call(EmailVerification.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [EmailVerification] by its [id] or null if no such row exists.
  Future<EmailVerification?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<EmailVerification>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [EmailVerification]s in the list and returns the inserted rows.
  ///
  /// The returned [EmailVerification]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<EmailVerification>> insert(
    _i1.Session session,
    List<EmailVerification> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<EmailVerification>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [EmailVerification] and returns the inserted row.
  ///
  /// The returned [EmailVerification] will have its `id` field set.
  Future<EmailVerification> insertRow(
    _i1.Session session,
    EmailVerification row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<EmailVerification>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [EmailVerification]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<EmailVerification>> update(
    _i1.Session session,
    List<EmailVerification> rows, {
    _i1.ColumnSelections<EmailVerificationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<EmailVerification>(
      rows,
      columns: columns?.call(EmailVerification.t),
      transaction: transaction,
    );
  }

  /// Updates a single [EmailVerification]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<EmailVerification> updateRow(
    _i1.Session session,
    EmailVerification row, {
    _i1.ColumnSelections<EmailVerificationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<EmailVerification>(
      row,
      columns: columns?.call(EmailVerification.t),
      transaction: transaction,
    );
  }

  /// Updates a single [EmailVerification] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<EmailVerification?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<EmailVerificationUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<EmailVerification>(
      id,
      columnValues: columnValues(EmailVerification.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [EmailVerification]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<EmailVerification>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<EmailVerificationUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<EmailVerificationTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmailVerificationTable>? orderBy,
    _i1.OrderByListBuilder<EmailVerificationTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<EmailVerification>(
      columnValues: columnValues(EmailVerification.t.updateTable),
      where: where(EmailVerification.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EmailVerification.t),
      orderByList: orderByList?.call(EmailVerification.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [EmailVerification]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<EmailVerification>> delete(
    _i1.Session session,
    List<EmailVerification> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EmailVerification>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [EmailVerification].
  Future<EmailVerification> deleteRow(
    _i1.Session session,
    EmailVerification row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<EmailVerification>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<EmailVerification>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EmailVerificationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<EmailVerification>(
      where: where(EmailVerification.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmailVerificationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EmailVerification>(
      where: where?.call(EmailVerification.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
