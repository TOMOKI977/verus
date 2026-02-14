import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:verus_flutter/widgets/download_button.dart';
import 'package:verus_flutter/widgets/verus_responsive_container.dart';
import 'package:verus_flutter/providers/theme_provider.dart';

class HeaderSection extends ConsumerWidget implements PreferredSizeWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final themeMode = ref.watch(themeModeProvider);
    final isWide = MediaQuery.of(context).size.width > 600;

    return AppBar(
      toolbarHeight: 80,
      backgroundColor: theme.colorScheme.primary,
      title: ResponsiveContainer(
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/Verus_Dark.svg',
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
            if (isWide) const DownloadButton(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
