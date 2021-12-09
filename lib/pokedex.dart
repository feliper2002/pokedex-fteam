import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';
import 'package:pokedex_screen/widgets/directional.dart';

class Pokedex extends StatefulWidget {
  const Pokedex({Key? key}) : super(key: key);

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
          Directional(
            top: 400,
            left: 50,
          ),
        ],
      ),
    );
  }
}
