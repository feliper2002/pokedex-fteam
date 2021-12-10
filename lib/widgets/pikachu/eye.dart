import 'package:flutter/material.dart';

enum EyeSide { left, right }

class PikachuEye extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  final EyeSide side;
  const PikachuEye({
    Key? key,
    this.height = 15.63,
    this.width = 15,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = Colors.black,
    this.side = EyeSide.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: CustomPaint(
        painter: _PikachuEyePainter(side),
        child: SizedBox(
          height: height,
          width: width,
        ),
      ),
    );
  }
}

class _PikachuEyePainter extends CustomPainter {
  final EyeSide side;

  _PikachuEyePainter(this.side);

  @override
  void paint(Canvas canvas, Size size) {
    final centerPoint = Offset(size.width * .5, size.height * .5);
    final eyeRect = Rect.fromCenter(
        center: centerPoint, width: size.width, height: size.height);
    final eyeBody = Paint()..color = Colors.black;
    canvas.drawOval(eyeRect, eyeBody);

    switch (side) {
      case EyeSide.left:
        final eyeBall = Paint()..color = Colors.white;
        canvas.drawCircle(
            Offset(size.width * .37, size.height * .357), 3.35, eyeBall);
        break;
      case EyeSide.right:
        final eyeBall = Paint()..color = Colors.white;
        canvas.drawCircle(
            Offset(size.width * .6, size.height * .32), 3.35, eyeBall);
        break;
      default:
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
