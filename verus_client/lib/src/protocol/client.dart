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
import 'dart:async' as _i2;
import 'package:verus_client/src/protocol/user.dart' as _i3;
import 'package:verus_client/src/protocol/subscription.dart' as _i4;
import 'package:verus_client/src/protocol/payment.dart' as _i5;
import 'package:verus_client/src/protocol/audit_log.dart' as _i6;
import 'package:verus_client/src/protocol/api_key.dart' as _i7;
import 'package:verus_client/src/protocol/notification.dart' as _i8;
import 'package:verus_client/src/protocol/transaction.dart' as _i9;
import 'package:verus_client/src/protocol/greetings/greeting.dart' as _i10;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i11;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i12;
import 'protocol.dart' as _i13;

/// {@category Endpoint}
class EndpointAdmin extends _i1.EndpointRef {
  EndpointAdmin(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'admin';

  _i2.Future<List<_i3.User>> listUsers(String token) =>
      caller.callServerEndpoint<List<_i3.User>>(
        'admin',
        'listUsers',
        {'token': token},
      );

  _i2.Future<List<_i4.Subscription>> listSubscriptions(String token) =>
      caller.callServerEndpoint<List<_i4.Subscription>>(
        'admin',
        'listSubscriptions',
        {'token': token},
      );

  _i2.Future<List<_i5.Payment>> listPayments(String token) =>
      caller.callServerEndpoint<List<_i5.Payment>>(
        'admin',
        'listPayments',
        {'token': token},
      );

  _i2.Future<List<_i6.AuditLog>> listAuditLogs(String token) =>
      caller.callServerEndpoint<List<_i6.AuditLog>>(
        'admin',
        'listAuditLogs',
        {'token': token},
      );

  _i2.Future<_i3.User> changeUserRole(
    String token,
    int userId,
    String newRole,
  ) => caller.callServerEndpoint<_i3.User>(
    'admin',
    'changeUserRole',
    {
      'token': token,
      'userId': userId,
      'newRole': newRole,
    },
  );
}

/// {@category Endpoint}
class EndpointApiKey extends _i1.EndpointRef {
  EndpointApiKey(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'apiKey';

  _i2.Future<_i7.ApiKey> addApiKey(
    String token,
    String exchangeName,
    String apiKey,
    String? apiSecret,
    String? passphrase,
  ) => caller.callServerEndpoint<_i7.ApiKey>(
    'apiKey',
    'addApiKey',
    {
      'token': token,
      'exchangeName': exchangeName,
      'apiKey': apiKey,
      'apiSecret': apiSecret,
      'passphrase': passphrase,
    },
  );

  _i2.Future<List<_i7.ApiKey>> listApiKeys(String token) =>
      caller.callServerEndpoint<List<_i7.ApiKey>>(
        'apiKey',
        'listApiKeys',
        {'token': token},
      );

  _i2.Future<bool> revokeApiKey(
    String token,
    int apiKeyId,
  ) => caller.callServerEndpoint<bool>(
    'apiKey',
    'revokeApiKey',
    {
      'token': token,
      'apiKeyId': apiKeyId,
    },
  );
}

/// {@category Endpoint}
class EndpointAuditLog extends _i1.EndpointRef {
  EndpointAuditLog(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'auditLog';

  _i2.Future<List<_i6.AuditLog>> listLogs(
    String token, {
    String? action,
    DateTime? startDate,
    DateTime? endDate,
  }) => caller.callServerEndpoint<List<_i6.AuditLog>>(
    'auditLog',
    'listLogs',
    {
      'token': token,
      'action': action,
      'startDate': startDate,
      'endDate': endDate,
    },
  );

  _i2.Future<_i6.AuditLog?> getLog(
    String token,
    int logId,
  ) => caller.callServerEndpoint<_i6.AuditLog?>(
    'auditLog',
    'getLog',
    {
      'token': token,
      'logId': logId,
    },
  );
}

/// {@category Endpoint}
class EndpointAuth extends _i1.EndpointRef {
  EndpointAuth(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'auth';

  _i2.Future<Map<String, dynamic>> register(
    String email,
    String password,
    String firstName,
    String lastName,
    String country,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'auth',
    'register',
    {
      'email': email,
      'password': password,
      'firstName': firstName,
      'lastName': lastName,
      'country': country,
    },
  );

  _i2.Future<Map<String, dynamic>> login(
    String email,
    String password,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'auth',
    'login',
    {
      'email': email,
      'password': password,
    },
  );
}

/// {@category Endpoint}
class EndpointNotification extends _i1.EndpointRef {
  EndpointNotification(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'notification';

  _i2.Future<List<_i8.Notification>> listNotifications(String token) =>
      caller.callServerEndpoint<List<_i8.Notification>>(
        'notification',
        'listNotifications',
        {'token': token},
      );

  _i2.Future<_i8.Notification> createNotification(
    String token,
    String title,
    String message, {
    String? type,
  }) => caller.callServerEndpoint<_i8.Notification>(
    'notification',
    'createNotification',
    {
      'token': token,
      'title': title,
      'message': message,
      'type': type,
    },
  );

  _i2.Future<bool> markAsRead(
    String token,
    int notificationId,
  ) => caller.callServerEndpoint<bool>(
    'notification',
    'markAsRead',
    {
      'token': token,
      'notificationId': notificationId,
    },
  );

  _i2.Future<int> markAllAsRead(String token) => caller.callServerEndpoint<int>(
    'notification',
    'markAllAsRead',
    {'token': token},
  );
}

/// {@category Endpoint}
class EndpointPayment extends _i1.EndpointRef {
  EndpointPayment(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'payment';

  _i2.Future<_i5.Payment> createPayment(
    String token,
    int subscriptionId,
    double amountUsdt,
    String currency,
    String? network,
  ) => caller.callServerEndpoint<_i5.Payment>(
    'payment',
    'createPayment',
    {
      'token': token,
      'subscriptionId': subscriptionId,
      'amountUsdt': amountUsdt,
      'currency': currency,
      'network': network,
    },
  );

  _i2.Future<_i5.Payment?> verifyPayment(
    String token,
    int paymentId,
  ) => caller.callServerEndpoint<_i5.Payment?>(
    'payment',
    'verifyPayment',
    {
      'token': token,
      'paymentId': paymentId,
    },
  );

  _i2.Future<List<_i5.Payment>> listPayments(String token) =>
      caller.callServerEndpoint<List<_i5.Payment>>(
        'payment',
        'listPayments',
        {'token': token},
      );
}

/// {@category Endpoint}
class EndpointSubscription extends _i1.EndpointRef {
  EndpointSubscription(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'subscription';

  _i2.Future<List<_i4.Subscription>> listSubscriptions(String token) =>
      caller.callServerEndpoint<List<_i4.Subscription>>(
        'subscription',
        'listSubscriptions',
        {'token': token},
      );

  _i2.Future<_i4.Subscription> subscribe(
    String token,
    String plan,
    double priceUsdt,
    int durationDays,
  ) => caller.callServerEndpoint<_i4.Subscription>(
    'subscription',
    'subscribe',
    {
      'token': token,
      'plan': plan,
      'priceUsdt': priceUsdt,
      'durationDays': durationDays,
    },
  );

  _i2.Future<bool> cancelSubscription(
    String token,
    int subscriptionId,
  ) => caller.callServerEndpoint<bool>(
    'subscription',
    'cancelSubscription',
    {
      'token': token,
      'subscriptionId': subscriptionId,
    },
  );

  _i2.Future<_i4.Subscription> upgradeSubscription(
    String token,
    int subscriptionId,
    String newPlan,
    double newPriceUsdt,
    int newDurationDays,
  ) => caller.callServerEndpoint<_i4.Subscription>(
    'subscription',
    'upgradeSubscription',
    {
      'token': token,
      'subscriptionId': subscriptionId,
      'newPlan': newPlan,
      'newPriceUsdt': newPriceUsdt,
      'newDurationDays': newDurationDays,
    },
  );

  _i2.Future<_i4.Subscription> renewSubscription(
    String token,
    int subscriptionId,
    int extraDays,
  ) => caller.callServerEndpoint<_i4.Subscription>(
    'subscription',
    'renewSubscription',
    {
      'token': token,
      'subscriptionId': subscriptionId,
      'extraDays': extraDays,
    },
  );
}

/// {@category Endpoint}
class EndpointTransaction extends _i1.EndpointRef {
  EndpointTransaction(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'transaction';

  _i2.Future<List<_i9.Trans>> listTransactions(
    String token, {
    String? exchangeName,
    DateTime? startDate,
    DateTime? endDate,
  }) => caller.callServerEndpoint<List<_i9.Trans>>(
    'transaction',
    'listTransactions',
    {
      'token': token,
      'exchangeName': exchangeName,
      'startDate': startDate,
      'endDate': endDate,
    },
  );

  _i2.Future<_i9.Trans?> getTransaction(
    String token,
    int transactionId,
  ) => caller.callServerEndpoint<_i9.Trans?>(
    'transaction',
    'getTransaction',
    {
      'token': token,
      'transactionId': transactionId,
    },
  );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i3.User?> getProfile(String token) =>
      caller.callServerEndpoint<_i3.User?>(
        'user',
        'getProfile',
        {'token': token},
      );

  _i2.Future<_i3.User> updateProfile(
    String token, {
    String? firstName,
    String? lastName,
    String? country,
  }) => caller.callServerEndpoint<_i3.User>(
    'user',
    'updateProfile',
    {
      'token': token,
      'firstName': firstName,
      'lastName': lastName,
      'country': country,
    },
  );

  _i2.Future<bool> changePassword(
    String token,
    String oldPassword,
    String newPassword,
  ) => caller.callServerEndpoint<bool>(
    'user',
    'changePassword',
    {
      'token': token,
      'oldPassword': oldPassword,
      'newPassword': newPassword,
    },
  );
}

/// This is an example endpoint that returns a greeting message through
/// its [hello] method.
/// {@category Endpoint}
class EndpointGreeting extends _i1.EndpointRef {
  EndpointGreeting(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'greeting';

  /// Returns a personalized greeting message: "Hello {name}".
  _i2.Future<_i10.Greeting> hello(String name) =>
      caller.callServerEndpoint<_i10.Greeting>(
        'greeting',
        'hello',
        {'name': name},
      );
}

class Modules {
  Modules(Client client) {
    serverpod_auth_idp = _i11.Caller(client);
    serverpod_auth_core = _i12.Caller(client);
  }

  late final _i11.Caller serverpod_auth_idp;

  late final _i12.Caller serverpod_auth_core;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    @Deprecated(
      'Use authKeyProvider instead. This will be removed in future releases.',
    )
    super.authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )?
    onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
         host,
         _i13.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
       ) {
    admin = EndpointAdmin(this);
    apiKey = EndpointApiKey(this);
    auditLog = EndpointAuditLog(this);
    auth = EndpointAuth(this);
    notification = EndpointNotification(this);
    payment = EndpointPayment(this);
    subscription = EndpointSubscription(this);
    transaction = EndpointTransaction(this);
    user = EndpointUser(this);
    greeting = EndpointGreeting(this);
    modules = Modules(this);
  }

  late final EndpointAdmin admin;

  late final EndpointApiKey apiKey;

  late final EndpointAuditLog auditLog;

  late final EndpointAuth auth;

  late final EndpointNotification notification;

  late final EndpointPayment payment;

  late final EndpointSubscription subscription;

  late final EndpointTransaction transaction;

  late final EndpointUser user;

  late final EndpointGreeting greeting;

  late final Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
    'admin': admin,
    'apiKey': apiKey,
    'auditLog': auditLog,
    'auth': auth,
    'notification': notification,
    'payment': payment,
    'subscription': subscription,
    'transaction': transaction,
    'user': user,
    'greeting': greeting,
  };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {
    'serverpod_auth_idp': modules.serverpod_auth_idp,
    'serverpod_auth_core': modules.serverpod_auth_core,
  };
}
