import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:verus_flutter/core/theme.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.go('/download'); // 👈 usa go_router para navegar
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.goldenOrange,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text('Descargar Verus'),
          SizedBox(width: 8),
          Icon(Icons.download),
        ],
      ),
    );
  }
}
