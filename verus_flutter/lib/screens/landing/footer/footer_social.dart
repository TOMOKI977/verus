import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:verus_flutter/core/theme.dart';

class FooterSocial extends StatelessWidget {
  final int year;
  const FooterSocial({super.key, required this.year});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Síguenos',
          style: theme.textTheme.headlineMedium?.copyWith(
            color: AppTheme.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(FontAwesomeIcons.xTwitter, color: AppTheme.white), // X
            const SizedBox(width: 12),
            Icon(
              FontAwesomeIcons.instagram,
              color: AppTheme.white,
            ), // Instagram
            const SizedBox(width: 12),
            Icon(FontAwesomeIcons.tiktok, color: AppTheme.white), // TikTok
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'Sobre nosotros',
          style: theme.textTheme.headlineMedium?.copyWith(
            color: AppTheme.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Equipo y colaboradores',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppTheme.white.withOpacity(0.9),
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 24),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Política de privacidad',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppTheme.white.withOpacity(0.9),
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Hecho con ❤️ por Verus Platforms | © $year',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: AppTheme.white.withOpacity(0.9),
          ),
        ),
      ],
    );
  }
}
