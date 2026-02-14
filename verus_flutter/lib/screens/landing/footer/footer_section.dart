import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:verus_flutter/core/theme.dart';
import 'package:verus_flutter/widgets/verus_responsive_container.dart';
import 'footer_column.dart';
import 'footer_social.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentYear = DateTime.now().year;
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40),
      color: AppTheme.blueSecondary,
      child: ResponsiveContainer(
        child: isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(theme),
                  const SizedBox(height: 20),
                  _buildColumns(theme, currentYear, isMobile),
                  const SizedBox(height: 20),
                  _buildLogo(),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 4, child: _buildHeader(theme)),
                  const SizedBox(width: 40),
                  Expanded(
                    flex: 6,
                    child: _buildColumns(theme, currentYear, isMobile),
                  ),
                  _buildLogo(),
                ],
              ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Verus',
          style: theme.textTheme.displayMedium?.copyWith(
            color: AppTheme.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Text(
            'La plataforma que automatiza la gestión de comerciantes P2P, '
            'con claridad, seguridad y métricas que te distinguen de la competencia.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppTheme.white.withOpacity(0.9),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.goldenOrange,
            foregroundColor: AppTheme.white,
          ),
          onPressed: () {
            // Acción de descarga
          },
          child: const Text("Descargar Verus"),
        ),
      ],
    );
  }

  Widget _buildColumns(ThemeData theme, int year, bool isMobile) {
    final verticalSpacing = isMobile ? 28.0 : 0.0; // 👈 más aire en mobile
    final horizontalSpacing = isMobile ? 0.0 : 60.0; // 👈 más aire en desktop

    return isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FooterSocial(year: year),
              SizedBox(height: verticalSpacing),
              FooterColumn(
                title: 'Comienza',
                links: ['Notas de lanzamiento', 'Documentación'],
              ),
              SizedBox(height: verticalSpacing),
              FooterColumn(
                title: 'Ayuda',
                links: [
                  'Reportar un problema',
                  'Canal de Telegram (en proceso)',
                  'Contacto: soporte@verusplatform.com',
                ],
              ),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: FooterSocial(year: year)),
              SizedBox(width: horizontalSpacing),
              Expanded(
                child: FooterColumn(
                  title: 'Comienza',
                  links: ['Notas de lanzamiento', 'Documentación'],
                ),
              ),
              SizedBox(width: horizontalSpacing),
              Expanded(
                child: FooterColumn(
                  title: 'Ayuda',
                  links: [
                    'Reportar un problema',
                    'Canal de Telegram (en proceso)',
                    'Contacto: soporte@verusplatform.com',
                  ],
                ),
              ),
            ],
          );
  }

  Widget _buildLogo() {
    return Align(
      // alignment: Alignment.bottomRight,
      child: SvgPicture.asset(
        'images/Verus_Dark.svg',
        width: 220,
        color: AppTheme.white.withOpacity(0.8),
      ),
    );
  }
}
