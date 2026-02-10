import 'package:flutter/material.dart';
import 'package:verus_flutter/widgets/verus_responsive_container.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      color: theme.colorScheme.primary, // 👈 fondo full-width
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: ResponsiveContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '© 2026 Verus Platforms | Políticas de privacidad',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
            // otros links o contenido
          ],
        ),
      ),
    );
  }
}
