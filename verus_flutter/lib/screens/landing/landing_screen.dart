import 'package:flutter/material.dart';
import 'package:verus_flutter/widgets/web_layout.dart';
import 'package:verus_flutter/screens/landing/faq_section.dart';
import 'package:verus_flutter/screens/landing/features_section.dart';
import 'package:verus_flutter/screens/landing/hero_section.dart';
import 'package:verus_flutter/screens/landing/pricing_section.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const WebLayout(
      showHeader: true,
      showFooter: true,
      child: Column(
        children: [
          HeroSection(),
          FeaturesSection(),
          PricingSection(),
          FaqSection(),
        ],
      ),
    );
  }
}
