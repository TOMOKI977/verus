import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'routing/app_router.dart';
import 'package:verus_client/verus_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'package:verus_flutter/core/config.dart';
import 'package:verus_flutter/core/theme.dart';
import 'package:verus_flutter/core/locale.dart';

import 'package:verus_flutter/providers/theme_provider.dart';

late final Client client;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Usa AppConfig para obtener la URL del servidor
  final serverUrl = AppConfig.serverUrl;

  client = Client(serverUrl)
    ..connectivityMonitor = FlutterConnectivityMonitor();

  runApp(
    const ProviderScope(child: VerusApp()),
  );
}

class VerusApp extends ConsumerWidget {
  const VerusApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      title: AppConfig.appName,
      routerConfig: appRouter,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      supportedLocales: AppLocale.supportedLocales,
      localizationsDelegates: AppLocale.localizationsDelegates,
    );
  }
}
