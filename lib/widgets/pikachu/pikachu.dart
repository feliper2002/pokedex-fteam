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
    this.height = 121,
    this.width = 151,
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

    final centerPoint = Offset(size.width * .59, size.height * .57);
    final circle = Rect.fromCenter(
        center: centerPoint,
        height: size.height * .55,
        width: size.width * .56);

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

    final noseCenterPoint = Offset(size.width * .56, size.height * .61);
    final noseRect = Rect.fromCenter(
        center: noseCenterPoint,
        width: noseDimensions.dx,
        height: noseDimensions.dy);

    final noseBody = Paint()..color = Colors.black;
    canvas.drawOval(noseRect, noseBody);

    ////////////////////////// [NOSE] ///////////////////////////////
    ///
    ////////////////////////// [MOUTH] ///////////////////////////////

    final mouthPaint = Paint()
          ..color = Colors.black
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke
        //
        ;

    final mouthPath = Path()
          ..moveTo(size.width * .5, size.height * .65)
          ..quadraticBezierTo(size.width * .52, size.height * .68,
              size.width * .57, size.height * .644)
          ..quadraticBezierTo(size.width * .61, size.height * .68,
              size.width * .662, size.height * .67)
        //
        ;

    canvas.drawPath(mouthPath, mouthPaint);

    ////////////////////////// [MOUTH] ///////////////////////////////
    ///
    ////////////////////////// [EARS] ///////////////////////////////

    final earOvalPaint = Paint()..color = AppColors.pikachuMainColor;
    final earOvalStroke = Paint()
          ..color = Colors.black
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke
        //
        ;

    //////// {LEFT EAR} ////////
    final leftTopEarPos = Offset(size.width, 0);
    final earLeftRect =
        Rect.fromLTWH(leftTopEarPos.dx, leftTopEarPos.dy, 24, 76);

    canvas.drawOval(earLeftRect, earOvalPaint);
    canvas.drawOval(earLeftRect, earOvalStroke);
    //////// {LEFT EAR} ////////

    //////// {RIGHT EAR} ////////

    const rightTopEarPos = Offset(0, 0);

    final earRightRect =
        Rect.fromLTWH(rightTopEarPos.dx, rightTopEarPos.dy, 24, 76);

    canvas.drawOval(earRightRect, earOvalPaint);
    canvas.drawOval(earRightRect, earOvalStroke);

    //////// {RIGHT EAR} ////////

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
