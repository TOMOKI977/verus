import 'package:flutter/material.dart';
import 'package:verus_flutter/core/theme.dart';

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> links;

  const FooterColumn({super.key, required this.title, required this.links});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.headlineMedium?.copyWith(
            color: AppTheme.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        ...links.map(
          (link) => Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: GestureDetector(
              onTap: () {
                // abrir enlace real
              },
              child: Text(
                link,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppTheme.white.withOpacity(0.9),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
