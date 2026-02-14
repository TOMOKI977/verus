import 'package:flutter/material.dart';
import 'package:verus_flutter/screens/landing/footer/footer_section.dart';
import 'package:verus_flutter/screens/landing/header_section.dart';
import 'package:verus_flutter/widgets/verus_responsive_container.dart';

class WebLayout extends StatelessWidget {
  final Widget child;
  final bool showHeader;
  final bool showFooter;

  const WebLayout({
    super.key,
    required this.child,
    this.showHeader = true,
    this.showFooter = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showHeader ? const HeaderSection() : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveContainer(child: child),
            if (showFooter) const FooterSection(),
          ],
        ),
      ),
    );
  }
}
