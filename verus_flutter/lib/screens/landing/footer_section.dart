import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentYear = DateTime.now().year;

    return Container(
      padding: const EdgeInsets.all(20),
      color: theme.colorScheme.secondary,
      child: Text(
        '© $currentYear Verus Platforms | Políticas de privacidad',
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onSecondary,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
