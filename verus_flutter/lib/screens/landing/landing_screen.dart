import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'hero_section.dart';
import 'features_section.dart';
import 'pricing_section.dart';
import 'faq_section.dart';
import 'footer_section.dart';
import 'package:verus_flutter/providers/theme_provider.dart';

class LandingScreen extends ConsumerWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verus Platforms',
          // style: theme.textTheme.displayMedium,
          style: theme.textTheme.displayMedium?.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        backgroundColor: theme.colorScheme.primary,
        actions: [
          IconButton(
            icon: Icon(
              themeMode == ThemeMode.light ? Icons.wb_sunny : Icons.nights_stay,
              color: theme.colorScheme.onPrimary,
            ),
            onPressed: () {
              final notifier = ref.read(themeModeProvider.notifier);
              if (themeMode == ThemeMode.light) {
                notifier.setDark();
              } else {
                notifier.setLight();
              }
            },
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text(
              'Iniciar Sesión',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: Text(
              'Registrarse',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1200),
                child: const Column(
                  children: [
                    HeroSection(),
                    FeaturesSection(),
                    PricingSection(),
                    FaqSection(),
                  ],
                ),
              ),
            ),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
