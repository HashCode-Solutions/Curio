import 'dart:math' as math;
import 'package:flutter/material.dart';

/// The Curio logomark: a dotted trail closed into a ring, with one solid
/// dot marking a position on it. Reused as the splash logo, the app icon
/// artwork, and — rotated frame by frame — as a loading spinner.
class TrailLogo extends StatelessWidget {
  final double size;
  final Color ringColor;
  final Color markColor;
  final double rotation; // radians, for spinner use

  const TrailLogo({
    super.key,
    this.size = 72,
    this.ringColor = const Color(0xFFE8A33D),
    this.markColor = const Color(0xFFE8A33D),
    this.rotation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation,
      child: SizedBox(
        width: size,
        height: size,
        child: CustomPaint(
          painter: _TrailLogoPainter(ringColor: ringColor, markColor: markColor),
        ),
      ),
    );
  }
}

class _TrailLogoPainter extends CustomPainter {
  final Color ringColor;
  final Color markColor;

  _TrailLogoPainter({required this.ringColor, required this.markColor});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width * 0.37;

    final ringPaint = Paint()
      ..color = ringColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03
      ..strokeCap = StrokeCap.round;

    // Dashed circle: short dash, longer gap, matching the quiz trail dots.
    const dashLength = 1.0;
    const gapLength = 9.0;
    final circumference = 2 * math.pi * radius;
    final dashCount = (circumference / (dashLength + gapLength)).floor();
    final anglePerDash = (2 * math.pi) / dashCount;

    for (var i = 0; i < dashCount; i++) {
      final startAngle = i * anglePerDash - math.pi / 2;
      final path = Path()
        ..addArc(
          Rect.fromCircle(center: center, radius: radius),
          startAngle,
          anglePerDash * (dashLength / (dashLength + gapLength)),
        );
      canvas.drawPath(path, ringPaint);
    }

    // The marker: a solid dot sitting at the top of the ring.
    final markPaint = Paint()..color = markColor;
    final markCenter = Offset(center.dx, center.dy - radius);
    canvas.drawCircle(markCenter, size.width * 0.055, markPaint);
  }

  @override
  bool shouldRepaint(covariant _TrailLogoPainter oldDelegate) =>
      oldDelegate.ringColor != ringColor || oldDelegate.markColor != markColor;
}
