import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  final double bigHeight;
  final double bigWidth;
  final double smallHeight;
  final double smallWidth;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final List<Color> colorsBack;
  final List<Color> colorsFront;
  final Color? circleColor;

  const SoundButton({
    Key? key,
    this.left = 13.6,
    this.top,
    this.right,
    this.bottom = 12.7,
    this.colorsBack = const <Color>[Color(0xff7B8287), Color(0xff324144)],
    this.colorsFront = const <Color>[Color(0xff4A494E), Color(0xff525157)],
    this.circleColor = const Color(0xff182022),
    this.bigHeight = 23.5,
    this.bigWidth = 23.5,
    this.smallHeight = 19.9,
    this.smallWidth = 19.9,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bigHeight,
      width: bigWidth,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(bigWidth * 0.17),
        gradient: LinearGradient(colors: colorsBack),
      ),
      child: Container(
        height: smallHeight,
        width: smallWidth,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(smallWidth * 0.2),
          gradient: LinearGradient(colors: colorsFront),
        ),
        child: CircleAvatar(
          backgroundColor: circleColor,
          radius: 7.75,
        ),
      ),
    );
  }
}
