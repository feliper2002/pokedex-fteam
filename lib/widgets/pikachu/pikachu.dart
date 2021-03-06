import 'dart:math';
import 'dart:typed_data';

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
    this.width = 158,
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

  void _rotate(Canvas canvas, double y, double x, double degrees) {
    canvas.translate(x, y);
    canvas.rotate(rotateRadians(degrees));
    canvas.translate(-x, -y);
  }

  Float64List _rotatePath(Offset origin, double degrees) {
    Matrix4 matrix = Matrix4.identity();

    var m = matrix
      ..clone()
      ..translate(origin.dx, origin.dy)
      ..multiply(Matrix4.rotationZ(rotateRadians(degrees)))
      ..translate(-origin.dx, -origin.dy);

    return m.storage;
  }

  @override
  void paint(Canvas canvas, Size size) {
    ////////////////////////// [TAIL] ///////////////////////////////

    final tailPaint = Paint()..color = AppColors.pikachuMainColor;
    final tailPaintStroke = Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
        //
        ;
    final tailPos = Offset(0, size.height * .09);

    Path tailPath = Path()
          ..moveTo(tailPos.dx, tailPos.dy)
          ..lineTo(size.width * .1, size.height * .5)
          ..lineTo(size.width * .25, size.height * .58)
          ..lineTo(size.width * .23, size.height * .73)
          ..lineTo(size.width * .35, size.height * .8)
          ..lineTo(size.width * .35, size.height * .37)
        //
        ;

    tailPath = tailPath.transform(_rotatePath(tailPos, -3));

    canvas.drawPath(tailPath, tailPaint);
    canvas.drawPath(tailPath, tailPaintStroke);

    ////////////////////////// [TAIL] ///////////////////////////////

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
    final eyeCenterPointLeft = Offset(size.width * .44, size.height * .53);
    final eyeRectLeft = Rect.fromCenter(
        center: eyeCenterPointLeft,
        width: blackIrisDimensions.dx,
        height: blackIrisDimensions.dy);

    final eyeBodyLeft = Paint()..color = Colors.black;
    canvas.drawOval(eyeRectLeft, eyeBodyLeft);

    /// Eye small pupil [left]
    final eyePupilLeft = Paint()..color = Colors.white;
    canvas.drawCircle(Offset(size.width * .45, size.height * .5),
        smallWhiteBalls, eyePupilLeft);

    ///////////// {LEFT} /////////////

    ///////////// {RIGHT} /////////////

    //// [RIGHT] Eye black ball draw
    final eyeCenterPointRight = Offset(size.width * .73, size.height * .53);
    final eyeRectRight = Rect.fromCenter(
        center: eyeCenterPointRight,
        width: blackIrisDimensions.dx,
        height: blackIrisDimensions.dy);

    final eyeBodyRight = Paint()..color = Colors.black;
    canvas.drawOval(eyeRectRight, eyeBodyRight);

    /// Eye small pupil [right]
    final eyePupilRight = Paint()..color = Colors.white;
    canvas.drawCircle(Offset(size.width * .72, size.height * .5),
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
    final earOvalStroke = Paint()..color = Colors.black;

    //////// {LEFT EAR} ////////
    final leftTopEarPos = Offset(size.width * .3, size.height * .19);
    final leftElipseEarPos = Offset(size.width * .35, size.height * .36);

    final earLeftRect = Rect.fromCenter(
        center: leftTopEarPos,
        width: size.width * .15,
        height: size.height * .62);
    final earLeftElipse = Rect.fromCenter(
        center: leftElipseEarPos,
        width: size.width * .36,
        height: size.height * .6);

    Path leftEarPath = Path()..addOval(earLeftRect);
    Path elipseLeftPath = Path()..addOval(earLeftElipse);

    leftEarPath = leftEarPath.transform(_rotatePath(leftTopEarPos, -47));

    canvas.drawPath(leftEarPath, earOvalStroke);

    canvas.drawPath(
        Path.combine(PathOperation.intersect, leftEarPath, elipseLeftPath),
        earOvalPaint);

    //////// {LEFT EAR} ////////

    //////// {RIGHT EAR} ////////

    final rightTopEarPos = Offset(size.width * .85, size.height * .19);
    final rightElipseEarPos = Offset(size.width * .75, size.height * .23);

    final earRightRect = Rect.fromCenter(
        center: rightTopEarPos,
        width: size.width * .15,
        height: size.height * .62);
    final earRightElipse = Rect.fromCenter(
        center: rightElipseEarPos,
        width: size.width * .36,
        height: size.height * .6);

    Path elipseRightPath = Path()..addOval(earRightElipse);

    Path rightEarPath = Path()..addOval(earRightRect);

    rightEarPath = rightEarPath.transform(_rotatePath(rightTopEarPos, 47));

    canvas.drawPath(rightEarPath, earOvalStroke);

    canvas.drawPath(
        Path.combine(PathOperation.intersect, rightEarPath, elipseRightPath),
        earOvalPaint);

    //////// {RIGHT EAR} ////////

    ////////////////////////// [EARS] ///////////////////////////////
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
    ///
    ////////////////////////// [ARMS] ///////////////////////////////

    final armPaint = Paint()..color = AppColors.pikachuMainColor;
    final armStroke = Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
        //
        ;

    //////// {LEFT ARM} ////////

    final leftArmDimensions = Offset(size.width * .25, size.height * .19);
    final leftArmPosition = Offset(size.width * .43, size.height * .8);

    final leftArm = Rect.fromCenter(
        center: leftArmPosition,
        width: leftArmDimensions.dx,
        height: leftArmDimensions.dy);

    Path leftArmPath = Path()..addOval(leftArm);

    leftArmPath = leftArmPath.transform(_rotatePath(leftArmPosition, 3));

    canvas.drawPath(leftArmPath, armPaint);
    canvas.drawPath(leftArmPath, armStroke);

    //////// {LEFT ARM} ////////

    //////// {RIGHT ARM} ////////

    final rightArmDimensions = Offset(size.width * .27, size.height * .17);
    final rightArmPosition = Offset(size.width * .74, size.height * .77);

    final rightArm = Rect.fromCenter(
        center: rightArmPosition,
        width: rightArmDimensions.dx,
        height: rightArmDimensions.dy);

    Path rightArmPath = Path()..addOval(rightArm);

    rightArmPath = rightArmPath.transform(_rotatePath(rightArmPosition, 3));

    canvas.drawPath(rightArmPath, armPaint);
    canvas.drawPath(rightArmPath, armStroke);

    //////// {RIGHT ARM} ////////

    ////////////////////////// [ARMS] ///////////////////////////////
    ///
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
