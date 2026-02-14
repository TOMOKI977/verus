import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:verus_flutter/core/theme.dart';
import 'package:verus_flutter/widgets/download_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = MediaQuery.of(context).size.width < 600;

    return SizedBox(
      height: screenHeight * 0.9,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Headline
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Automatiza tu gestión P2P en ',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontSize: isMobile
                          ? 48
                          : 84, // 👈 ajusté un poco para móviles
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  TextSpan(
                    text: 'segundos',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontSize: isMobile ? 48 : 84,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.goldenOrange,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
              softWrap: true, // 👈 permite saltos de línea
              overflow: TextOverflow.visible, // 👈 evita truncar
              maxLines: 3, // 👈 opcional, asegura que no se corte raro
            ),
            const SizedBox(height: 16),
            // Subheadline
            Text(
              'Centraliza tus transacciones y reemplaza las planillas improvisadas '
              'con reportes regulatorios adaptados a cada país.',
              style: theme.textTheme.bodyLarge?.copyWith(
                // fontSize: 18,
                color: theme.colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            // CTA adaptativo
            isMobile
                ? Column(
                    children: [
                      const DownloadButton(),
                      const SizedBox(height: 12),
                      OutlinedButton(
                        onPressed: () {
                          context.go('/register');
                        },
                        child: const Text('Empezar ahora'),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const DownloadButton(),
                      const SizedBox(width: 16),
                      OutlinedButton(
                        onPressed: () {
                          context.go('/register');
                        },
                        child: const Text('Empezar ahora'),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
