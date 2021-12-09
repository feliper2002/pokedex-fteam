import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class PikachuFace extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  const PikachuFace({
    Key? key,
    this.height = 67,
    this.width = 85,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.pikachuMainColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _FacePaint(),
      child: Container(
        height: height,
        width: width,
      ),
    );
  }
}

class _FacePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final centerPoint = Offset(size.width * .5, size.height * .5);
    final circle = Rect.fromCenter(
        center: centerPoint, height: size.height, width: size.width);

    final paint = Paint()
          ..color = AppColors.pikachuMainColor
          ..strokeJoin = StrokeJoin.round
          ..strokeWidth = 2
        //
        ;

    canvas.drawOval(circle, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
