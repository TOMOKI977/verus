import 'package:flutter/material.dart';
import 'hero_section.dart';
import 'features_section.dart';
import 'pricing_section.dart';
import 'faq_section.dart';
import 'footer_section.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verus Platforms',
          style: theme.textTheme.displayMedium,
        ),
        backgroundColor: theme.colorScheme.primary,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text(
              'Login',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            FeaturesSection(),
            PricingSection(),
            FaqSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
