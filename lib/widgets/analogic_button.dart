import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnalogicButton extends StatelessWidget {
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final double size;
  const AnalogicButton({
    Key? key,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.size = 58,
  }) : super(key: key);

  ///TODO
  /// Mover gradientes para classe de Cores

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: size,
        width: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: size * .017),
            gradient: const LinearGradient(
                colors: [Color(0xff686D70), Color(0xff050F11)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight * .81,
            width: constraints.maxWidth * .81,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xff071113), Color(0xff686D70)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: LayoutBuilder(builder: (context, constraints) {
              return Container(
                height: constraints.maxHeight * .92,
                width: constraints.maxWidth * .92,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: constraints.maxWidth * .021,
                    ),
                    gradient: const LinearGradient(
                        colors: [Color(0xff686D70), Color(0xff050F11)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              );
            }),
          );
        }),
      ),
    );
  }
}
