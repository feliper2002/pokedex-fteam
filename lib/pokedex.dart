import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';
import 'package:pokedex_screen/widgets/analogic_button.dart';
import 'package:pokedex_screen/widgets/dex_button.dart';
import 'package:pokedex_screen/widgets/directional.dart';
import 'package:pokedex_screen/widgets/green_button.dart';
import 'package:pokedex_screen/widgets/hinge/hinge_small_rectangle.dart';
import 'package:pokedex_screen/widgets/hinge/middle_hinge.dart';
import 'package:pokedex_screen/widgets/hinge/extreme_hinge.dart';
import 'package:pokedex_screen/widgets/lamp.dart';
import 'package:pokedex_screen/widgets/light_lamp.dart';
import 'package:pokedex_screen/widgets/pikachu/eye.dart';
import 'package:pokedex_screen/widgets/pikachu/body.dart';
import 'package:pokedex_screen/widgets/screen.dart';
import 'package:pokedex_screen/widgets/screen_frame.dart';
import 'package:pokedex_screen/widgets/top_side.dart';

import 'widgets/led.dart';

/// TODO
///
/// - [ ] Utilizar CustomPainter e ClipPath
/// - [ ] Posicionar o Pikachu entre os widgets [Screen] e [ScreenFrame]

class Pokedex extends StatefulWidget {
  const Pokedex({Key? key}) : super(key: key);

  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.screenFrameBorder,
      body: Stack(
        children: [
          ///////////////////////// [Top Side] ////////////////////
          TopSide(
            top: 0,
            height: size.height * .23,
            width: size.width,
          ),
          ///////////////////////// [Top Side] ////////////////////
          Lamp(
            top: size.height * .039,
            left: size.width * .077,
            size: size.height * .1319,
            lightWidget: LightLamp(size: size.height * .02),
          ),
          ///////////////////////// [Led row] ////////////////////
          Led(
            size: size.height * .018,
            top: size.height * .037,
            left: size.width * .35,
            type: LedType.red,
          ),
          Led(
            size: size.height * .018,
            top: size.height * .037,
            left: size.width * .416,
            type: LedType.yellow,
          ),
          Led(
            size: size.height * .018,
            top: size.height * .037,
            left: size.width * .48,
            type: LedType.green,
          ),
          ///////////////////////// [Led row] ////////////////////
          ScreenFrame(
            height: size.height * .3538,
            width: size.width * .768,
            top: size.height * .3,
            left: size.width * .064,
            centerChild: Screen(
              height: size.height * .24,
              width: size.width * .626,
            ),
          ),
          AnalogicButton(
            bottom: size.height * .18,
            left: size.width * .07,
            size: size.height * .087,
          ),
          ///////////////////////// [Dex button row] ////////////////////
          DexButton(
            height: size.height * .012,
            width: size.width * .0986,
            bottom: size.height * .26,
            left: size.width * .27,
            type: ButtonType.select,
          ),
          DexButton(
            height: size.height * .012,
            width: size.width * .0986,
            bottom: size.height * .26,
            left: size.width * .45,
            type: ButtonType.start,
          ),
          ///////////////////////// [Dex button row] ////////////////////
          GreenButton(
            bottom: size.height * .126,
            left: size.width * .264,
            height: size.height * .08,
            width: size.width * .264,
          ),
          Directional(
            right: size.width * .136,
            bottom: size.height * .109,
            width: size.width * .272,
            height: size.height * .148,
          ),
          ///////////////////////// [Hinge] ////////////////////
          ExtremeHinge(
            height: size.height * .124,
            width: size.width * .1,
            top: size.height * .1019,
            right: 0,
            type: HingeType.top,
          ),
          MiddleHinge(
            height: size.height * .613,
            width: size.width * .1,
            top: size.height * .23,
            right: 0,
          ),
          ExtremeHinge(
            height: size.height * .145,
            width: size.width * .1,
            bottom: 0,
            right: 0,
            type: HingeType.bottom,
          ),
          HingeSmallRectangle(
            height: size.height * .0075,
            width: size.width * .1,
            top: size.height * .847,
            right: 0,
          ),
          ///////////////////////// [Hinge] ////////////////////
        ],
      ),
    );
  }
}
