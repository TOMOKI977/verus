import 'package:flutter/material.dart';
import 'package:verus_flutter/core/media_content.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:verus_flutter/core/theme.dart'; // 👈 paleta de colores

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  // Íconos iniciales según el título
  IconData _iconData(String title) {
    switch (title) {
      case "Transacciones automáticas":
        return Icons.sync; // 🔄
      case "Carga manual con comprobantes":
        return Icons.upload_file; // 📄
      case "Gestión de anuncios":
        return Icons.campaign; // 📢
      case "Guía para comerciantes":
        return Icons.school; // 📘
      case "Reportes claros":
        return Icons.table_chart; // 📊
      case "Historial ilimitado":
        return Icons.history; // 🕒
      case "Alertas inteligentes":
        return Icons.warning; // ⚠️
      default:
        return Icons.help_outline;
    }
  }

  // Colores de marca según el título
  Color _iconColor(String title) {
    switch (title) {
      case "Transacciones automáticas":
        return AppTheme.bluePrimary;
      case "Carga manual con comprobantes":
        return AppTheme.goldenOrange;
      case "Gestión de anuncios":
        return AppTheme.cayenneRed;
      case "Guía para comerciantes":
        return AppTheme.greenAccent;
      case "Reportes claros":
        return AppTheme.purpleAccent;
      case "Historial ilimitado":
        return AppTheme.tealAccent;
      case "Alertas inteligentes":
        return AppTheme.cayenneRed;
      default:
        return AppTheme.darkGray;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 👇 Título de la sección
          Text(
            'Funcionalidades clave',
            style: theme.textTheme.displayMedium?.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 20),

          // 👇 Lista de features sin padding adicional
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: MediaContent.features.map((item) {
              return ExpansionTile(
                leading: Icon(
                  _iconData(item.title),
                  color: _iconColor(item.title),
                  size: 28,
                ),
                title: Text(
                  item.title,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (item.type == "youtube")
                          const Text(
                            "Multimedia en desarrollo",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.grey,
                            ),
                          ),
                        if (item.type == "image")
                          Image.network(
                            item.videoId,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        if (item.type == "link")
                          TextButton.icon(
                            onPressed: () async {
                              final uri = Uri.parse(item.videoId);
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri);
                              }
                            },
                            icon: Icon(
                              Icons.open_in_new,
                              color: AppTheme.cayenneRed,
                            ),
                            label: const Text("Ver contenido"),
                          ),
                        const SizedBox(height: 12),
                        Text(
                          item.description,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
