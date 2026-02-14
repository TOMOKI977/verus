import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:verus_flutter/core/theme.dart';
import 'package:verus_flutter/widgets/web_layout.dart';
import 'dart:js' as js;

class DownloadCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool enabled;
  final String? url;
  final bool highlighted;

  const DownloadCard({
    super.key,
    required this.title,
    required this.icon,
    required this.enabled,
    this.url,
    this.highlighted = false,
  });

  Future<void> _launchUrl(BuildContext context) async {
    if (url != null && enabled) {
      final uri = Uri.parse(url!);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Could not launch link")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Usa el CardTheme global y cambia el borde si highlighted
    final shape = highlighted
        ? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: AppTheme.goldenOrange, width: 2),
          )
        : theme.cardTheme.shape;

    final textColor = enabled
        ? (theme.brightness == Brightness.dark
              ? AppTheme.white
              : AppTheme.blueSecondary)
        : (theme.brightness == Brightness.dark
              ? Colors.white.withOpacity(0.4)
              : Colors.grey);

    return InkWell(
      onTap: enabled
          ? () async {
              if (title.contains("PWA")) {
                // 👇 Llamada directa a la función JS definida en index.html
                js.context.callMethod('installPWA');
              } else if (url != null) {
                final uri = Uri.parse(url!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Could not launch link")),
                  );
                }
              }
            }
          : null,
      child: Card(
        shape: shape,
        color: enabled ? theme.cardTheme.color : theme.disabledColor,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(icon, size: 32, color: textColor),
              const SizedBox(width: 12),
              Text(
                title,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: textColor,
                  fontWeight: enabled ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    final platform = defaultTargetPlatform;

    final isAndroid = platform == TargetPlatform.android;
    final isIOS = platform == TargetPlatform.iOS;
    final isDesktop =
        platform == TargetPlatform.windows ||
        platform == TargetPlatform.macOS ||
        platform == TargetPlatform.linux;

    final isWide = MediaQuery.of(context).size.width > 800;
    final crossAxisCount = isWide ? 2 : 1;

    // 👇 Lista base de opciones
    final cards = [
      DownloadCard(
        title: "Google Play Store",
        icon: FontAwesomeIcons.googlePlay,
        enabled: isAndroid,
        highlighted: isAndroid,
        url: "https://play.google.com/store/apps/details?id=com.verus",
      ),
      DownloadCard(
        title: "Apple App Store",
        icon: FontAwesomeIcons.appStoreIos,
        enabled: isIOS,
        highlighted: isIOS,
        url: "https://apps.apple.com/app/verus/id123456789",
      ),
      DownloadCard(
        title: "Microsoft Store",
        icon: FontAwesomeIcons.microsoft,
        enabled: isDesktop,
        highlighted: isDesktop,
        url: "https://apps.microsoft.com/store/detail/verus/9NBLGGH12345",
      ),
      const DownloadCard(
        title: "Progressive Web App (PWA)",
        icon: FontAwesomeIcons.chrome,
        enabled: true,
        highlighted: true,
      ),
    ];

    // 👇 Reordenar según plataforma
    List<DownloadCard> orderedCards;
    if (isAndroid) {
      orderedCards = [
        cards[0], // Play Store
        cards[3], // PWA
        cards[1], // App Store
        cards[2], // Microsoft Store
      ];
    } else if (isIOS) {
      orderedCards = [
        cards[1], // App Store
        cards[3], // PWA
        cards[0], // Play Store
        cards[2], // Microsoft Store
      ];
    } else if (isDesktop) {
      orderedCards = [
        cards[3], // PWA
        cards[2], // Microsoft Store
        cards[0], // Play Store
        cards[1], // App Store
      ];
    } else {
      orderedCards = cards; // fallback
    }

    return WebLayout(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 3.5,
          children: orderedCards,
        ),
      ),
    );
  }
}
