import 'package:flutter/material.dart';

class FaqSection extends StatelessWidget {
  const FaqSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final faqs = [
      {
        "question": "¿Cómo funciona Verus?",
        "answer":
            "Verus no se conecta automáticamente a los exchanges. Tú, como comerciante P2P, usas la API key que te da tu exchange (por ahora Binance, Bybit y Bitget) y la registras en Verus. Así se automatiza el registro de tus transacciones. También puedes subir comprobantes en PDF o imágenes si prefieres hacerlo manualmente.",
      },
      {
        "question": "¿Qué pasa cuando se acabe mi trial gratis?",
        "answer":
            "Al terminar los 12 días de prueba gratuita, puedes elegir un plan de pago para seguir usando Verus. Si no lo haces, tus datos se guardan por un tiempo para que puedas volver a activar tu cuenta sin perder tu historial.",
      },
      {
        "question":
            "¿Una vez acabe mi plan, cuánto tiempo guarda Verus mis datos?",
        "answer":
            "Tus datos permanecen almacenados de forma segura incluso si tu suscripción expira. Si decides volver más adelante, tendrás acceso a tu historial completo.",
      },
      {
        "question": "¿Desde qué dispositivos puedo ingresar a Verus?",
        "answer":
            "Puedes acceder desde la web, instalarlo como PWA en tu móvil o usar la app en Android. La experiencia está adaptada tanto para escritorio como para móvil.",
      },
      {
        "question": "¿Verus está aliado a algún gobierno?",
        "answer":
            "No. Verus no está aliado a ningún gobierno. Solo usamos los datos que proveen los exchanges y los que solicitan los bancos para cumplir con normativas como el PSAV en Bolivia.",
      },
      {
        "question": "¿Para quiénes está pensado Verus?",
        "answer":
            "Verus está diseñado para comerciantes P2P que operan en exchanges de criptomonedas. En esta primera fase está orientado a personas naturales en Bolivia, y luego se expandirá a otros países y empresas.",
      },
      {
        "question": "¿Qué seguridad tienen mis datos?",
        "answer":
            "Tus contraseñas y API keys no las manejamos directamente nosotros, sino que se protegen con servicios de Google especializados en seguridad. Además, Verus tendrá 2FA para funciones sensibles como manejar tus anuncios desde la plataforma.",
      },
      {
        "question": "¿Pueden dos usuarios usar la misma API key?",
        "answer":
            "No. Las API keys son de un solo uso por cuenta en el exchange. Si olvidas tu cuenta en Verus y creas otra, deberás generar una nueva API key en tu exchange. En Verus no vigilamos tu historial, pero si lo hiciéramos buscaríamos dar de baja cuentas olvidadas para evitar gastos de mantenimiento innecesarios.",
      },
      {
        "question": "¿Verus vigilará mi historial?",
        "answer":
            "No. Verus no usa tu información para ayudar a gobiernos o bancos. Solo te damos las herramientas para que tú mismo presentes tus datos en caso de que lo necesites por temas legales o bancarios.",
      },
      {
        "question": "¿Qué métricas me ayuda a obtener Verus?",
        "answer":
            "Podrás ver tus beneficios como comerciante P2P en distintos periodos (horas, días, semanas, meses), cuántos comercios fueron exitosos, cuántos fallidos o apelados, y cuántos cancelados.",
      },
      {
        "question": "¿Cómo funciona la lista negra?",
        "answer":
            "La lista negra identifica usuarios con comportamientos riesgosos, como fraude o incumplimientos. Verus te alerta si haces transacciones con alguien marcado en esa lista.",
      },
      {
        "question": "¿Qué tan real es la lista negra?",
        "answer":
            "No basta con que alguien denuncie por envidia o problemas personales. Verus valida los casos para evitar abusos y que solo entren a la lista quienes realmente representen un riesgo.",
      },
    ];

    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Preguntas frecuentes',
            style: theme.textTheme.displayMedium?.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 20),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: faqs.map((faq) {
              return ExpansionTile(
                title: Text(
                  faq["question"]!,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      faq["answer"]!,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withOpacity(0.9),
                      ),
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
