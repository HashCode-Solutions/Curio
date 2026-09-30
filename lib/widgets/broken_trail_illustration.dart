import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// The offline-state illustration: the same dotted ring as [TrailLogo],
/// but with the marker dot fallen off to the side instead of sitting on
/// the ring — "you've lost the trail" as a picture, not just a headline.
class BrokenTrailIllustration extends StatelessWidget {
  final double size;

  const BrokenTrailIllustration({super.key, this.size = 104});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(painter: _BrokenTrailPainter()),
    );
  }
}

class _BrokenTrailPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width * 0.35;

    final ringPaint = Paint()
      ..color = AppColors.ink.withOpacity(0.18)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.026
      ..strokeCap = StrokeCap.round;

    // Dashed circle: short dash, longer gap, matching the quiz trail dots.
    const dashLength = 1.0;
    const gapLength = 10.0;
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

    // The marker, fallen off the ring to the lower right.
    final markPoint = Paint()..color = AppColors.raspberry;
    final markCenter = Offset(
      center.dx + radius * 0.62,
      center.dy + radius * 0.82,
    );
    canvas.drawCircle(markCenter, size.width * 0.05, markPoint);

    // Small motion lines suggesting it just dropped.
    final linePaint = Paint()
      ..color = AppColors.raspberry.withOpacity(0.4)
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
      markCenter.translate(-9, -11),
      markCenter.translate(-6, -5),
      linePaint,
    );
    canvas.drawLine(
      markCenter.translate(9, -10),
      markCenter.translate(6, -4),
      linePaint,
    );
  }

  @override
  bool shouldRepaint(covariant _BrokenTrailPainter oldDelegate) => false;
}
