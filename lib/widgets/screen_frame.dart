import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';
import 'package:pokedex_screen/widgets/screen.dart';
import 'package:pokedex_screen/widgets/screen_button.dart';
import 'package:pokedex_screen/widgets/sound_button.dart';

class ScreenFrame extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  final Color borderColor;
  final Widget centerChild;
  final Widget bottomLeftWidget;
  final Widget bottomRightWidget;
  const ScreenFrame({
    Key? key,
    this.height = 236,
    this.width = 288,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.screenFrame,
    this.borderColor = AppColors.screenFrameBorder,
    this.centerChild = const Screen(),
    this.bottomLeftWidget = const ScreenButton(),
    this.bottomRightWidget = const SoundButton(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: ClipPath(
        clipper: _FrameClip(),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(width * .052),
            border: Border.all(width: width * .00347, color: borderColor),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: centerChild,
              ),
              Positioned(
                left: width * .16,
                bottom: height * .06,
                child: bottomLeftWidget,
              ),
              Positioned(
                right: width * .157,
                bottom: height * .04,
                child: bottomRightWidget,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FrameClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
          ..moveTo(0, 0)
          ..lineTo(0, size.height * .83)
          ..lineTo(size.width * .135, size.height)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, 0)
        //
        ;

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this != oldClipper;
  }
}
