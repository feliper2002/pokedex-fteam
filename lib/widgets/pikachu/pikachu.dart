import 'dart:math';

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
  double rotateRadians(double degrees) {
    final radians = degrees * (pi / 180);
    return radians;
  }

  @override
  void paint(Canvas canvas, Size size) {
    ////////////////////////// [HEAD] ///////////////////////////////

    final centerPoint = Offset(size.width * .59, size.height * .57);
    final circle = Rect.fromCenter(
        center: centerPoint,
        height: size.height * .55,
        width: size.width * .56);

    final paintBody = Paint()..color = AppColors.pikachuMainColor;
    final bodyPath = Path()..addOval(circle);
    canvas.drawPath(bodyPath, paintBody);

    final strokeCirclePaint = Paint()
          ..color = Colors.black
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke
        //
        ;
    canvas.drawOval(circle, strokeCirclePaint);
    ////////////////////////// [HEAD] ///////////////////////////////
    ///
    ////////////////////////// [EYE] ///////////////////////////////

    final blackIrisDimensions = Offset(size.width * .095, size.height * .13);
    const smallWhiteBalls = 3.35;

    ///////////// {LEFT} /////////////

    //// [LEFT] Eye black ball draw
    final eyeCenterPointLeft = Offset(size.width * .44, size.height * .486);
    final eyeRectLeft = Rect.fromCenter(
        center: eyeCenterPointLeft,
        width: blackIrisDimensions.dx,
        height: blackIrisDimensions.dy);

    final eyeBodyLeft = Paint()..color = Colors.black;
    canvas.drawOval(eyeRectLeft, eyeBodyLeft);

    /// Eye small pupil [left]
    final eyePupilLeft = Paint()..color = Colors.white;
    canvas.drawCircle(Offset(size.width * .45, size.height * .47),
        smallWhiteBalls, eyePupilLeft);

    ///////////// {LEFT} /////////////

    ///////////// {RIGHT} /////////////

    //// [RIGHT] Eye black ball draw
    final eyeCenterPointRight = Offset(size.width * .73, size.height * .486);
    final eyeRectRight = Rect.fromCenter(
        center: eyeCenterPointRight,
        width: blackIrisDimensions.dx,
        height: blackIrisDimensions.dy);

    final eyeBodyRight = Paint()..color = Colors.black;
    canvas.drawOval(eyeRectRight, eyeBodyRight);

    /// Eye small pupil [right]
    final eyePupilRight = Paint()..color = Colors.white;
    canvas.drawCircle(Offset(size.width * .72, size.height * .47),
        smallWhiteBalls, eyePupilRight);

    ///////////// {RIGHT} /////////////

    ////////////////////////// [EYE] ///////////////////////////////
    ///
    ////////////////////////// [NOSE] ///////////////////////////////

    final noseDimensions = Offset(size.width * .0247, size.height * .01385);

    final noseCenterPoint = Offset(size.width * .576, size.height * .61);
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
    final leftTopEarPos = Offset(size.width * .24, 0);
    final earLeftRect =
        Rect.fromLTWH(leftTopEarPos.dx, leftTopEarPos.dy, 24, 76);

    canvas.drawOval(earLeftRect, earOvalPaint);
    canvas.drawOval(earLeftRect, earOvalStroke);
    //////// {LEFT EAR} ////////

    //////// {RIGHT EAR} ////////

    final rightTopEarPos = Offset(size.width * .78, 0);

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
    final cheeksRadius = size.width * .07;

    //////// {LEFT CHEEK} ////////

    final cheeksLeftPosition = Offset(size.width * .354, size.height * .694);

    final leftCirclePath = Path()
          ..addOval(
              Rect.fromCircle(center: cheeksLeftPosition, radius: cheeksRadius))
        //
        ;
    canvas.drawPath(
        Path.combine(PathOperation.intersect, leftCirclePath, bodyPath),
        cheeksPaint);

    //////// {LEFT CHEEK} ////////

    //////// {RIGHT CHEEK} ////////

    final cheeksRightPosition = Offset(size.width * .82, size.height * .694);

    final rightCirclePath = Path()
          ..addOval(Rect.fromCircle(
              center: cheeksRightPosition, radius: cheeksRadius))
        //
        ;
    canvas.drawPath(
        Path.combine(PathOperation.intersect, rightCirclePath, bodyPath),
        cheeksPaint);

    //////// {RIGHT CHEEK} ////////

    ////////////////////////// [CHEEKS] ///////////////////////////////

    ////////////////////////// [TAIL] ///////////////////////////////

    final tailPaint = Paint()..color = AppColors.pikachuMainColor;
    final tailPaintStroke = Paint()
          ..color = Colors.black
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke
        //
        ;

    final tailPath = Path()
          ..moveTo(0, size.height * .09)
          ..lineTo(size.width * .1, size.height * .5)
          ..lineTo(size.width * .25, size.height * .58)
          ..lineTo(size.width * .23, size.height * .73)
          ..lineTo(size.width * .35, size.height * .8)
          ..lineTo(size.width * .35, size.height * .37)
        //
        ;

    canvas.drawPath(tailPath, tailPaint);
    canvas.drawPath(tailPath, tailPaintStroke);
    canvas.drawPath(
        Path.combine(PathOperation.difference, tailPath, bodyPath), tailPaint);

    ////////////////////////// [TAIL] ///////////////////////////////
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
