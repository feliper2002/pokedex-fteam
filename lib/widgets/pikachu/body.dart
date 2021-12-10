import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

enum BodyType { face, leftArm, rightArm }

class PikachuBody extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  final BodyType type;
  const PikachuBody({
    Key? key,
    this.height = 67,
    this.width = 85,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.pikachuMainColor,
    this.type = BodyType.face,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight;
    double bodyWidth;

    switch (type) {
      case BodyType.face:
        bodyHeight = 67;
        bodyWidth = 85;
        break;
      case BodyType.leftArm:
        bodyHeight = 19.8;
        bodyWidth = 43.17;
        break;
      case BodyType.rightArm:
        bodyHeight = 25.6;
        bodyWidth = 39;
        break;
      default:
        bodyHeight = height;
        bodyWidth = width;
    }

    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: CustomPaint(
        painter: _FacePaint(),
        child: SizedBox(
          height: bodyHeight,
          width: bodyWidth,
        ),
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

    final paintBody = Paint()..color = AppColors.pikachuMainColor;
    canvas.drawOval(circle, paintBody);

    final strokeCirclePaint = Paint()
          ..color = Colors.black
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke
        //
        ;
    canvas.drawOval(circle, strokeCirclePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
