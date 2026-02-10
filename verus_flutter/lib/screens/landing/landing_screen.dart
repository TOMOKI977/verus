import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:verus_flutter/core/theme.dart';
import 'package:verus_flutter/widgets/verus_responsive_container.dart';
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
        toolbarHeight: 80,
        backgroundColor: theme.colorScheme.primary,
        title: ResponsiveContainer(
          child: Row(
            children: [
              SvgPicture.asset(
                'images/Verus_Dark.svg',
                height: 40,
              ),
              const SizedBox(width: 12),
              Text(
                'Verus',
                style: theme.textTheme.displayMedium?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontSize: 28,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: Icon(
                  themeMode == ThemeMode.light
                      ? Icons.wb_sunny
                      : Icons.nights_stay,
                  color: theme.colorScheme.onPrimary,
                ),
                onPressed: () {
                  final notifier = ref.read(themeModeProvider.notifier);
                  themeMode == ThemeMode.light
                      ? notifier.setDark()
                      : notifier.setLight();
                },
              ),
              if (MediaQuery.of(context).size.width > 600)
                ElevatedButton(
                  onPressed: () {
                    // TODO: lógica de descarga
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.goldenOrange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Descargar Verus'),
                      SizedBox(width: 8),
                      Icon(Icons.download),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveContainer(
              child: const Column(
                children: [
                  HeroSection(),
                  FeaturesSection(),
                  PricingSection(),
                  FaqSection(),
                ],
              ),
            ),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
