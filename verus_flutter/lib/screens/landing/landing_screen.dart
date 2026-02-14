import 'package:flutter/material.dart';
import 'package:verus_flutter/widgets/web_layout.dart';
import 'package:verus_flutter/screens/landing/faq_section.dart';
import 'package:verus_flutter/screens/landing/features_section.dart';
import 'package:verus_flutter/screens/landing/hero_section.dart';
import 'package:verus_flutter/screens/landing/pricing_section.dart';
import 'dart:html' as html; // 👈 solo para web reload

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WebLayout(
      showHeader: true,
      showFooter: true,
      child: RefreshIndicator(
        onRefresh: () async {
          // 👇 En web/PWA puedes forzar reload completo
          html.window.location.reload();

          // 👇 En mobile nativo, aquí podrías recargar datos
          // await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          physics:
              const AlwaysScrollableScrollPhysics(), // 👈 necesario para que funcione
          child: Column(
            children: const [
              HeroSection(),
              FeaturesSection(),
              PricingSection(),
              FaqSection(),
            ],
          ),
        ),
      ),
    );
  }
}
