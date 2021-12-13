import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class Pikachu extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  const Pikachu({
    Key? key,
    this.height = 120.5,
    this.width = 150.88,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.pikachuMainColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // switch (type) {
    //   case BodyType.face:
    //     bodyHeight = 67;
    //     bodyWidth = 85;
    //     break;
    //   case BodyType.leftArm:
    //     bodyHeight = 19.8;
    //     bodyWidth = 43.17;
    //     break;
    //   case BodyType.rightArm:
    //     bodyHeight = 25.6;
    //     bodyWidth = 39;
    //     break;
    //   default:
    //     bodyHeight = height;
    //     bodyWidth = width;
    // }

    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: CustomPaint(
        painter: _PikachuPaint(),
        child: SizedBox(
          height: height,
          width: width,
        ),
      ),
    );
  }
}

class _PikachuPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    ////////////////////////// [BODY PARTS] ///////////////////////////////

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
    ////////////////////////// [BODY PARTS] ///////////////////////////////
    ///
    ////////////////////////// [EYE] ///////////////////////////////

    final blackIrisDimensions = Offset(size.width * .095, size.height * .13);
    const smallWhiteBalls = 3.35;

    ///////////// {LEFT} /////////////

    //// [LEFT] Eye black ball draw
    final eyeCenterPointLeft = Offset(size.width * .37, size.height * .486);
    final eyeRectLeft = Rect.fromCenter(
        center: eyeCenterPointLeft,
        width: blackIrisDimensions.dx,
        height: blackIrisDimensions.dy);

    final eyeBodyLeft = Paint()..color = Colors.black;
    canvas.drawOval(eyeRectLeft, eyeBodyLeft);

    /// Eye small pupil [left]
    final eyePupilLeft = Paint()..color = Colors.white;
    canvas.drawCircle(Offset(size.width * .38, size.height * .47),
        smallWhiteBalls, eyePupilLeft);

    ///////////// {LEFT} /////////////

    ///////////// {RIGHT} /////////////

    //// [RIGHT] Eye black ball draw
    final eyeCenterPointRight = Offset(size.width * .644, size.height * .486);
    final eyeRectRight = Rect.fromCenter(
        center: eyeCenterPointRight,
        width: blackIrisDimensions.dx,
        height: blackIrisDimensions.dy);

    final eyeBodyRight = Paint()..color = Colors.black;
    canvas.drawOval(eyeRectRight, eyeBodyRight);

    /// Eye small pupil [right]
    final eyePupilRight = Paint()..color = Colors.white;
    canvas.drawCircle(Offset(size.width * .64, size.height * .47),
        smallWhiteBalls, eyePupilRight);

    ///////////// {RIGHT} /////////////

    ////////////////////////// [EYE] ///////////////////////////////
    ///
    ////////////////////////// [NOSE] ///////////////////////////////

    final noseDimensions = Offset(size.width * .0247, size.height * .01385);

    final noseCenterPoint = Offset(size.width * .52, size.height * .6157);
    final noseRect = Rect.fromCenter(
        center: noseCenterPoint,
        width: noseDimensions.dx,
        height: noseDimensions.dy);

    final noseBody = Paint()..color = Colors.black;
    canvas.drawOval(noseRect, noseBody);

    ////////////////////////// [NOSE] ///////////////////////////////
    ///
    ////////////////////////// [MOUTH] ///////////////////////////////

    final mouthDimensions = Offset(size.width * .158, size.height * .03);

    final mouthPosition = Offset(size.width * .47, size.height * .653);

    final mouthRect = Rect.fromLTWH(
      mouthPosition.dx,
      mouthPosition.dy,
      mouthDimensions.dx,
      mouthDimensions.dy,
    );

    final mouthArcPoints = Offset(size.width * .52, size.height * .82);
    final mouthPaint = Paint()
          ..color = Colors.black
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke
        //
        ;

    canvas.drawArc(
        mouthRect, mouthArcPoints.dx, mouthArcPoints.dy, true, mouthPaint);

    ////////////////////////// [MOUTH] ///////////////////////////////
    ///
    ////////////////////////// [EARS] ///////////////////////////////
    ////////////////////////// [EARS] ///////////////////////////////
    ///
    ////////////////////////// [ARMS] ///////////////////////////////

    final armPaint = Paint()..color = AppColors.pikachuMainColor;

    ////////////////////////// [ARMS] ///////////////////////////////
    ///
    ////////////////////////// [CHEEKS] ///////////////////////////////

    final cheeksPaint = Paint()..color = AppColors.pikachuCheeks;

    ////////////////////////// [CHEEKS] ///////////////////////////////
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
