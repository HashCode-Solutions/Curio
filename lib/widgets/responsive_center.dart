import 'package:flutter/material.dart';

/// On a phone this is a no-op. On a tablet, it stops body content from
/// stretching edge-to-edge — text lines would get absurdly long and
/// buttons absurdly wide otherwise — and centers a comfortably-readable
/// column instead, the same way a website constrains its content width.
class ResponsiveCenter extends StatelessWidget {
  final Widget child;
  final double maxWidth;

  const ResponsiveCenter({super.key, required this.child, this.maxWidth = 640});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}
