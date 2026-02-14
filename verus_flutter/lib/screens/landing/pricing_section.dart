import 'package:flutter/material.dart';
import 'package:verus_flutter/core/theme.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  Widget _buildPlanCard(
    BuildContext context,
    Map<String, dynamic> plan, {
    bool highlighted = false,
    bool enabled = true,
  }) {
    final theme = Theme.of(context);

    // Usa el CardTheme global y cambia el borde si highlighted
    final shape = highlighted
        ? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
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

    return Transform.translate(
      offset: highlighted ? const Offset(0, -20) : Offset.zero,
      child: Card(
        shape: shape,
        elevation: highlighted ? 12 : 4,
        color: enabled ? theme.cardTheme.color : theme.disabledColor,
        child: Container(
          width: highlighted ? 300 : 250,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                plan["name"] as String,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                plan["price"] as String,
                style: theme.textTheme.displaySmall?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                plan["period"] as String,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: enabled
                      ? theme.colorScheme.onSurface.withOpacity(0.7)
                      : textColor,
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: highlighted
                      ? AppTheme.goldenOrange
                      : theme.colorScheme.primary,
                  foregroundColor: AppTheme.white,
                ),
                onPressed: enabled
                    ? () {
                        // Acción de adquirir plan
                      }
                    : null,
                child: const Text("Adquirir"),
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: (plan["features"] as List<String>)
                    .map(
                      (feature) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          children: [
                            Icon(
                              Icons.check,
                              size: 18,
                              color: highlighted
                                  ? AppTheme.white
                                  : Colors.green,
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                feature,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isMobile = MediaQuery.of(context).size.width < 600;

    final List<Map<String, dynamic>> plans = [
      {
        "name": "Trial",
        "price": "0 USDT",
        "period": "12 días",
        "features": [
          "Acceso completo durante 12 días",
          "Sin costo inicial",
          "Ideal para probar Verus",
        ],
      },
      {
        "name": "Mensual",
        "price": "9.99 USDT",
        "period": "por mes",
        "features": [
          "Acceso ilimitado",
          "Historial sin límite",
          "Reportes claros y exportables",
        ],
      },
      {
        "name": "Trimestral",
        "price": "24.99 USDT",
        "period": "cada 3 meses",
        "features": [
          "Ahorro del 17%",
          "Acceso ilimitado",
          "Soporte prioritario",
        ],
      },
      {
        "name": "Semestral",
        "price": "44.99 USDT",
        "period": "cada 6 meses",
        "features": [
          "Ahorro del 25%",
          "Acceso ilimitado",
          "Reportes regulatorios incluidos",
        ],
      },
      {
        "name": "Anual",
        "price": "79.99 USDT",
        "period": "por año",
        "features": [
          "Ahorro del 33%",
          "Acceso ilimitado",
          "Ideal para comerciantes activos",
        ],
      },
      {
        "name": "Customizable",
        "price": "Variable",
        "period": "elige tu período",
        "features": [
          "Define la duración exacta",
          "Precio ajustado a tus necesidades",
          "Flexibilidad total",
        ],
      },
    ];

    // Orden jerárquico para mobile
    final orderedPlans = [
      plans.firstWhere((p) => p["name"] == "Trimestral"),
      plans.firstWhere((p) => p["name"] == "Mensual"),
      plans.firstWhere((p) => p["name"] == "Anual"),
      plans.firstWhere((p) => p["name"] == "Semestral"),
      plans.firstWhere((p) => p["name"] == "Trial"),
      plans.firstWhere((p) => p["name"] == "Customizable"),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: theme.colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Planes de pago',
            style: theme.textTheme.displayMedium?.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 20),

          if (isMobile)
            Column(
              children: orderedPlans.map((plan) {
                final highlighted = plan["name"] == "Trimestral";
                final enabled =
                    plan["name"] != "Customizable"; // 👈 deshabilitado
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: _buildPlanCard(
                    context,
                    plan,
                    highlighted: highlighted,
                    enabled: enabled,
                  ),
                );
              }).toList(),
            )
          else
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildPlanCard(
                      context,
                      plans.firstWhere((p) => p["name"] == "Mensual"),
                    ),
                    const SizedBox(width: 20),
                    _buildPlanCard(
                      context,
                      plans.firstWhere((p) => p["name"] == "Trimestral"),
                      highlighted: true,
                    ),
                    const SizedBox(width: 20),
                    _buildPlanCard(
                      context,
                      plans.firstWhere((p) => p["name"] == "Anual"),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildPlanCard(
                      context,
                      plans.firstWhere((p) => p["name"] == "Semestral"),
                    ),
                    const SizedBox(width: 20),
                    _buildPlanCard(
                      context,
                      plans.firstWhere((p) => p["name"] == "Customizable"),
                      enabled: false, // 👈 deshabilitado
                    ),
                    const SizedBox(width: 20),
                    _buildPlanCard(
                      context,
                      plans.firstWhere((p) => p["name"] == "Trial"),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
