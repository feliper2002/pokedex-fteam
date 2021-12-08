import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';
import 'package:pokedex_screen/widgets/analogic_button.dart';
import 'package:pokedex_screen/widgets/lamp.dart';
import 'package:pokedex_screen/widgets/led.dart';
import 'package:pokedex_screen/widgets/light_lamp.dart';

class Pokedex extends StatefulWidget {
  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenFrameBorder,
      body: Stack(
        children: const [
          // Lamp(
          //   top: 300,
          //   left: 200,
          //   lightWidget: LightLamp(size: 88),
          // ),
          Led(
            type: LedType.green,
            top: 200,
            left: 200,
          ),
        ],
      ),
    );
  }
}
