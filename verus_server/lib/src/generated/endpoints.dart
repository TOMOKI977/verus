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
import '../endpoints/admin_endpoint.dart' as _i2;
import '../endpoints/apikey_endpoint.dart' as _i3;
import '../endpoints/auditlog_endpoint.dart' as _i4;
import '../endpoints/auth_endpoint.dart' as _i5;
import '../endpoints/notification_endpoint.dart' as _i6;
import '../endpoints/payment_endpoint.dart' as _i7;
import '../endpoints/subscription_endpoint.dart' as _i8;
import '../endpoints/transaction_endpoint.dart' as _i9;
import '../endpoints/user_endpoint.dart' as _i10;
import '../greetings/greeting_endpoint.dart' as _i11;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _i12;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i13;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'admin': _i2.AdminEndpoint()
        ..initialize(
          server,
          'admin',
          null,
        ),
      'apiKey': _i3.ApiKeyEndpoint()
        ..initialize(
          server,
          'apiKey',
          null,
        ),
      'auditLog': _i4.AuditLogEndpoint()
        ..initialize(
          server,
          'auditLog',
          null,
        ),
      'auth': _i5.AuthEndpoint()
        ..initialize(
          server,
          'auth',
          null,
        ),
      'notification': _i6.NotificationEndpoint()
        ..initialize(
          server,
          'notification',
          null,
        ),
      'payment': _i7.PaymentEndpoint()
        ..initialize(
          server,
          'payment',
          null,
        ),
      'subscription': _i8.SubscriptionEndpoint()
        ..initialize(
          server,
          'subscription',
          null,
        ),
      'transaction': _i9.TransactionEndpoint()
        ..initialize(
          server,
          'transaction',
          null,
        ),
      'user': _i10.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
      'greeting': _i11.GreetingEndpoint()
        ..initialize(
          server,
          'greeting',
          null,
        ),
    };
    connectors['admin'] = _i1.EndpointConnector(
      name: 'admin',
      endpoint: endpoints['admin']!,
      methodConnectors: {
        'listUsers': _i1.MethodConnector(
          name: 'listUsers',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['admin'] as _i2.AdminEndpoint).listUsers(
                session,
                params['token'],
              ),
        ),
        'listSubscriptions': _i1.MethodConnector(
          name: 'listSubscriptions',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['admin'] as _i2.AdminEndpoint).listSubscriptions(
                    session,
                    params['token'],
                  ),
        ),
        'listPayments': _i1.MethodConnector(
          name: 'listPayments',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['admin'] as _i2.AdminEndpoint).listPayments(
                session,
                params['token'],
              ),
        ),
        'listAuditLogs': _i1.MethodConnector(
          name: 'listAuditLogs',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['admin'] as _i2.AdminEndpoint).listAuditLogs(
                    session,
                    params['token'],
                  ),
        ),
        'changeUserRole': _i1.MethodConnector(
          name: 'changeUserRole',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'newRole': _i1.ParameterDescription(
              name: 'newRole',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['admin'] as _i2.AdminEndpoint).changeUserRole(
                    session,
                    params['token'],
                    params['userId'],
                    params['newRole'],
                  ),
        ),
      },
    );
    connectors['apiKey'] = _i1.EndpointConnector(
      name: 'apiKey',
      endpoint: endpoints['apiKey']!,
      methodConnectors: {
        'addApiKey': _i1.MethodConnector(
          name: 'addApiKey',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'exchangeName': _i1.ParameterDescription(
              name: 'exchangeName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'apiKey': _i1.ParameterDescription(
              name: 'apiKey',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'apiSecret': _i1.ParameterDescription(
              name: 'apiSecret',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'passphrase': _i1.ParameterDescription(
              name: 'passphrase',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['apiKey'] as _i3.ApiKeyEndpoint).addApiKey(
                session,
                params['token'],
                params['exchangeName'],
                params['apiKey'],
                params['apiSecret'],
                params['passphrase'],
              ),
        ),
        'listApiKeys': _i1.MethodConnector(
          name: 'listApiKeys',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['apiKey'] as _i3.ApiKeyEndpoint).listApiKeys(
                    session,
                    params['token'],
                  ),
        ),
        'revokeApiKey': _i1.MethodConnector(
          name: 'revokeApiKey',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'apiKeyId': _i1.ParameterDescription(
              name: 'apiKeyId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['apiKey'] as _i3.ApiKeyEndpoint).revokeApiKey(
                    session,
                    params['token'],
                    params['apiKeyId'],
                  ),
        ),
      },
    );
    connectors['auditLog'] = _i1.EndpointConnector(
      name: 'auditLog',
      endpoint: endpoints['auditLog']!,
      methodConnectors: {
        'listLogs': _i1.MethodConnector(
          name: 'listLogs',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'action': _i1.ParameterDescription(
              name: 'action',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'startDate': _i1.ParameterDescription(
              name: 'startDate',
              type: _i1.getType<DateTime?>(),
              nullable: true,
            ),
            'endDate': _i1.ParameterDescription(
              name: 'endDate',
              type: _i1.getType<DateTime?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['auditLog'] as _i4.AuditLogEndpoint).listLogs(
                    session,
                    params['token'],
                    action: params['action'],
                    startDate: params['startDate'],
                    endDate: params['endDate'],
                  ),
        ),
        'getLog': _i1.MethodConnector(
          name: 'getLog',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'logId': _i1.ParameterDescription(
              name: 'logId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auditLog'] as _i4.AuditLogEndpoint).getLog(
                session,
                params['token'],
                params['logId'],
              ),
        ),
      },
    );
    connectors['auth'] = _i1.EndpointConnector(
      name: 'auth',
      endpoint: endpoints['auth']!,
      methodConnectors: {
        'register': _i1.MethodConnector(
          name: 'register',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'firstName': _i1.ParameterDescription(
              name: 'firstName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'lastName': _i1.ParameterDescription(
              name: 'lastName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'country': _i1.ParameterDescription(
              name: 'country',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i5.AuthEndpoint).register(
                session,
                params['email'],
                params['password'],
                params['firstName'],
                params['lastName'],
                params['country'],
              ),
        ),
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i5.AuthEndpoint).login(
                session,
                params['email'],
                params['password'],
              ),
        ),
      },
    );
    connectors['notification'] = _i1.EndpointConnector(
      name: 'notification',
      endpoint: endpoints['notification']!,
      methodConnectors: {
        'listNotifications': _i1.MethodConnector(
          name: 'listNotifications',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['notification'] as _i6.NotificationEndpoint)
                  .listNotifications(
                    session,
                    params['token'],
                  ),
        ),
        'createNotification': _i1.MethodConnector(
          name: 'createNotification',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'title': _i1.ParameterDescription(
              name: 'title',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'message': _i1.ParameterDescription(
              name: 'message',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'type': _i1.ParameterDescription(
              name: 'type',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['notification'] as _i6.NotificationEndpoint)
                  .createNotification(
                    session,
                    params['token'],
                    params['title'],
                    params['message'],
                    type: params['type'],
                  ),
        ),
        'markAsRead': _i1.MethodConnector(
          name: 'markAsRead',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'notificationId': _i1.ParameterDescription(
              name: 'notificationId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['notification'] as _i6.NotificationEndpoint)
                  .markAsRead(
                    session,
                    params['token'],
                    params['notificationId'],
                  ),
        ),
        'markAllAsRead': _i1.MethodConnector(
          name: 'markAllAsRead',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['notification'] as _i6.NotificationEndpoint)
                  .markAllAsRead(
                    session,
                    params['token'],
                  ),
        ),
      },
    );
    connectors['payment'] = _i1.EndpointConnector(
      name: 'payment',
      endpoint: endpoints['payment']!,
      methodConnectors: {
        'createPayment': _i1.MethodConnector(
          name: 'createPayment',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subscriptionId': _i1.ParameterDescription(
              name: 'subscriptionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'amountUsdt': _i1.ParameterDescription(
              name: 'amountUsdt',
              type: _i1.getType<double>(),
              nullable: false,
            ),
            'currency': _i1.ParameterDescription(
              name: 'currency',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'network': _i1.ParameterDescription(
              name: 'network',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['payment'] as _i7.PaymentEndpoint).createPayment(
                    session,
                    params['token'],
                    params['subscriptionId'],
                    params['amountUsdt'],
                    params['currency'],
                    params['network'],
                  ),
        ),
        'verifyPayment': _i1.MethodConnector(
          name: 'verifyPayment',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'paymentId': _i1.ParameterDescription(
              name: 'paymentId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['payment'] as _i7.PaymentEndpoint).verifyPayment(
                    session,
                    params['token'],
                    params['paymentId'],
                  ),
        ),
        'listPayments': _i1.MethodConnector(
          name: 'listPayments',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['payment'] as _i7.PaymentEndpoint).listPayments(
                    session,
                    params['token'],
                  ),
        ),
      },
    );
    connectors['subscription'] = _i1.EndpointConnector(
      name: 'subscription',
      endpoint: endpoints['subscription']!,
      methodConnectors: {
        'listSubscriptions': _i1.MethodConnector(
          name: 'listSubscriptions',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['subscription'] as _i8.SubscriptionEndpoint)
                  .listSubscriptions(
                    session,
                    params['token'],
                  ),
        ),
        'subscribe': _i1.MethodConnector(
          name: 'subscribe',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'plan': _i1.ParameterDescription(
              name: 'plan',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'priceUsdt': _i1.ParameterDescription(
              name: 'priceUsdt',
              type: _i1.getType<double>(),
              nullable: false,
            ),
            'durationDays': _i1.ParameterDescription(
              name: 'durationDays',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['subscription'] as _i8.SubscriptionEndpoint)
                  .subscribe(
                    session,
                    params['token'],
                    params['plan'],
                    params['priceUsdt'],
                    params['durationDays'],
                  ),
        ),
        'cancelSubscription': _i1.MethodConnector(
          name: 'cancelSubscription',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subscriptionId': _i1.ParameterDescription(
              name: 'subscriptionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['subscription'] as _i8.SubscriptionEndpoint)
                  .cancelSubscription(
                    session,
                    params['token'],
                    params['subscriptionId'],
                  ),
        ),
        'upgradeSubscription': _i1.MethodConnector(
          name: 'upgradeSubscription',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subscriptionId': _i1.ParameterDescription(
              name: 'subscriptionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'newPlan': _i1.ParameterDescription(
              name: 'newPlan',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newPriceUsdt': _i1.ParameterDescription(
              name: 'newPriceUsdt',
              type: _i1.getType<double>(),
              nullable: false,
            ),
            'newDurationDays': _i1.ParameterDescription(
              name: 'newDurationDays',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['subscription'] as _i8.SubscriptionEndpoint)
                  .upgradeSubscription(
                    session,
                    params['token'],
                    params['subscriptionId'],
                    params['newPlan'],
                    params['newPriceUsdt'],
                    params['newDurationDays'],
                  ),
        ),
        'renewSubscription': _i1.MethodConnector(
          name: 'renewSubscription',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'subscriptionId': _i1.ParameterDescription(
              name: 'subscriptionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'extraDays': _i1.ParameterDescription(
              name: 'extraDays',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['subscription'] as _i8.SubscriptionEndpoint)
                  .renewSubscription(
                    session,
                    params['token'],
                    params['subscriptionId'],
                    params['extraDays'],
                  ),
        ),
      },
    );
    connectors['transaction'] = _i1.EndpointConnector(
      name: 'transaction',
      endpoint: endpoints['transaction']!,
      methodConnectors: {
        'listTransactions': _i1.MethodConnector(
          name: 'listTransactions',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'exchangeName': _i1.ParameterDescription(
              name: 'exchangeName',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'startDate': _i1.ParameterDescription(
              name: 'startDate',
              type: _i1.getType<DateTime?>(),
              nullable: true,
            ),
            'endDate': _i1.ParameterDescription(
              name: 'endDate',
              type: _i1.getType<DateTime?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['transaction'] as _i9.TransactionEndpoint)
                  .listTransactions(
                    session,
                    params['token'],
                    exchangeName: params['exchangeName'],
                    startDate: params['startDate'],
                    endDate: params['endDate'],
                  ),
        ),
        'getTransaction': _i1.MethodConnector(
          name: 'getTransaction',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'transactionId': _i1.ParameterDescription(
              name: 'transactionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['transaction'] as _i9.TransactionEndpoint)
                  .getTransaction(
                    session,
                    params['token'],
                    params['transactionId'],
                  ),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'getProfile': _i1.MethodConnector(
          name: 'getProfile',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i10.UserEndpoint).getProfile(
                session,
                params['token'],
              ),
        ),
        'updateProfile': _i1.MethodConnector(
          name: 'updateProfile',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'firstName': _i1.ParameterDescription(
              name: 'firstName',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'lastName': _i1.ParameterDescription(
              name: 'lastName',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'country': _i1.ParameterDescription(
              name: 'country',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i10.UserEndpoint).updateProfile(
                session,
                params['token'],
                firstName: params['firstName'],
                lastName: params['lastName'],
                country: params['country'],
              ),
        ),
        'changePassword': _i1.MethodConnector(
          name: 'changePassword',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'oldPassword': _i1.ParameterDescription(
              name: 'oldPassword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newPassword': _i1.ParameterDescription(
              name: 'newPassword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['user'] as _i10.UserEndpoint).changePassword(
                    session,
                    params['token'],
                    params['oldPassword'],
                    params['newPassword'],
                  ),
        ),
      },
    );
    connectors['greeting'] = _i1.EndpointConnector(
      name: 'greeting',
      endpoint: endpoints['greeting']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['greeting'] as _i11.GreetingEndpoint).hello(
                session,
                params['name'],
              ),
        ),
      },
    );
    modules['serverpod_auth_idp'] = _i12.Endpoints()
      ..initializeEndpoints(server);
    modules['serverpod_auth_core'] = _i13.Endpoints()
      ..initializeEndpoints(server);
  }
}
