import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: CustomPaint(painter: _BackgroundPainter(), child: child),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final rect = Rect.fromLTRB(-105, -20, size.width, 200);

    paint.strokeWidth = 2;
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    paint.shader = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.black, //
        const Color(0xff43116A),
        Colors.black.withOpacity(0.8),
      ],
      stops: const [0.2, 0.8, 0.1],
    ).createShader(rect);

    //canvas
    canvas.rotate(-0.70);
    canvas.translate(-40, 115);
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
