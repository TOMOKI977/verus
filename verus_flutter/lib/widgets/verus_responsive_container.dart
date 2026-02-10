import 'package:flutter/material.dart';

class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  const ResponsiveContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width < 600 ? 16 : 80, // 👈 cambia según el ancho
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1200,
          ), // 👈 evita estirarse demasiado
          child: child,
        ),
      ),
    );
  }
}
