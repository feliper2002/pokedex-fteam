import 'dart:ui';

import 'package:flutter/material.dart';

//--------------------------------------------------------------------//
//------------------------------Colors--------------------------------//
//--------------------------------------------------------------------//

class AppColors {
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffFFFFFF);
  static const Color background = Color(0xff1B2634);
  static const Color pokeballRedTop = Color(0xffA51A17);
  static const Color pokeballRedBottom = Color(0xffE51D20);
  static const Color pokeballWhiteTop = Color(0xffFFFFFF);
  static const Color pokeballWhiteBottom = Color(0xffA19E9E);

  //--------------------------------------------------------------------//
  //----------------------------Screen----------------------------------//
  //--------------------------------------------------------------------//
  static const Color screen = Color(0xff1E1E1E);
  static const Color screenFrame = Color(0xffDAE8EB);
  static const Color screenFrameBorder = Color(0xffE51D20);
  static const Color screenButton = Color(0xffE51D20);

  //--------------------------------------------------------------------//
  //----------------------------Lamp------------------------------------//
  //--------------------------------------------------------------------//
  static const Color lampFrame = screenFrame;
  static const Color lampInner = Color(0xff3BC4FA);
  static const Color lampOuter = Color(0xff1778D5);
  static const Color lampShineIner = white;
  static const Color lampShineOuter = Color(0xff3AC2F9);
  static const Color lampBorder = Color(0xffAD282A);

  static const Gradient gradientBigCircle = RadialGradient(
    colors: [
      lampInner,
      lampOuter,
    ],
  );

  static const Gradient gradientSmallCircle = RadialGradient(
    colors: [
      lampShineIner,
      lampShineOuter,
    ],
  );

  //--------------------------------------------------------------------//
  //----------------------------LedsIndicative------------------------------------//
  //--------------------------------------------------------------------//
  static const Color redLedInner = Color(0xffFF9282);
  static const Color redLedOuter = Color(0xffE0433F);
  static const Color redLedBorder = Color(0xffBC1F21);
  static const Color yellowLedInner = Color(0xffFEDB6A);
  static const Color yellowLedOuter = Color(0xffFABE17);
  static const Color yellowLedBorder = Color(0xffEA960A);
  static const Color greenLedInner = Color(0xffBDEAA7);
  static const Color greenLedOuter = Color(0xff52C153);
  static const Color greenLedBorder = Color(0xff5C743A);

  static const Gradient redGradient = RadialGradient(
    colors: [redLedInner, redLedOuter],
  );

  static const Gradient greenGradient = RadialGradient(
    colors: [greenLedInner, greenLedOuter],
  );

  static const Gradient yellowGradient = RadialGradient(
    colors: [yellowLedInner, yellowLedOuter],
  );

  //--------------------------------------------------------------------//
  //----------------------------BigButton-------------------------------//
  //--------------------------------------------------------------------//
  static const Color bigButtonLayerBorder = Color(0xff000000);
  //Layer0
  static const Color bigButtonLayer0Top = Color(0xff686D70);
  static const Color bigButtonLayer0Bottom = Color(0xff050F11);
  //Layer1
  static const Color bigButtonLayer1Top = Color(0xff050F11);
  static const Color bigButtonLayer1Bottom = Color(0xff686D70);
  //Layer2
  static const Color bigButtonLayer2Top = Color(0xff676A6F);
  static const Color bigButtonLayer2Bottom = Color(0xff242625);

  //--------------------------------------------------------------------//
  //----------------------------Sound-----------------------------------//
  //--------------------------------------------------------------------//
  //Layer0
  static const Color soundLayer0Top = Color(0xff7B8287);
  static const Color soundLayer0Bottom = Color(0xff324144);
  //layer1
  static const Color soundLayer1Top = Color(0xff4A494E);
  static const Color soundLayer1Bottom = Color(0xff525157);
  //Layer2
  static const Color soundLayer2 = Color(0xff182022);

  //--------------------------------------------------------------------//
  //----------------------------DigitalDirection------------------------//
  //--------------------------------------------------------------------//

  //--------------------------------Up----------------------------------//
  //Layer0
  static const Color digitalDirectionTopLayer0Top = Color(0xff7B8287);
  static const Color digitalDirectionTopLayer0Bottom = Color(0xff050F11);
  //Layer1
  static const Color digitalDirectionTopLayer1Top = Color(0xff686D70);
  static const Color digitalDirectionTopLayer1Bottom = Color(0xff050F11);
  //Layer2
  static const Color digitalDirectionTopLayer2Bottom = Color(0xff182022);

  //------------------------------Down----------------------------------//
  //Layer0
  static const Color digitalDirectionLeftLayer0Top = Color(0xff7B8287);
  static const Color digitalDirectionLeftLayer0Bottom = Color(0xff050F11);
  //Layer1
  static const Color digitalDirectionLeftLayer1Top = Color(0xff686D70);
  static const Color digitalDirectionLeftLayer1Bottom = Color(0xff050F11);
  //Layer2
  static const Color digitalDirectionLeftLayer2Bottom = Color(0xff182022);

  //---------------------------------Left-------------------------------//
  //Layer0
  static const Color digitalDirectionBottomLayer0Top = Color(0xff7B8287);
  static const Color digitalDirectionBottomLayer0Bottom = Color(0xff050F11);
  //Layer1
  static const Color digitalDirectionBottomLayer1Top = Color(0xff686D70);
  static const Color digitalDirectionBottomLayer1Bottom = Color(0xff050F11);
  //Layer2
  static const Color digitalDirectionBottomLayer2Bottom = Color(0xff182022);

  //------------------------------Right-----------------------------------//
  //Layer0
  static const Color digitalDirectionRightLayer0Top = Color(0xff7B8287);
  static const Color digitalDirectionRightLayer0Bottom = Color(0xff050F11);
  //Layer1
  static const Color digitalDirectionRightLayer1Top = Color(0xff686D70);
  static const Color digitalDirectionRightLayer1Bottom = Color(0xff050F11);
  //Layer2
  static const Color digitalDirectionRightLayer2Bottom = Color(0xff182022);

  //--------------------------------------------------------------------//
  //----------------------------ActionButton----------------------------//
  //--------------------------------------------------------------------//

  //---------------------------------1----------------------------------//
  //Up
  static const Color actionButtonUpTop = Color(0xff53595C);
  static const Color actionButtonUpBottom = Color(0xff363D40);

  //---------------------------------2----------------------------------//
  //Left
  static const Color actionButtonLeftTop = Color(0xff535A5C);
  static const Color actionButtonLeftBottom = Color(0xff363D40);

  //---------------------------------3----------------------------------//
  //Bottom
  static const Color actionButtonBottomTop = Color(0xff353D3F);
  static const Color actionButtonBottomBottom = Color(0xff182022);

  //---------------------------------4----------------------------------//
  //Right
  static const Color actionButtonRightTop = Color(0xff353C3F);
  static const Color actionButtonRightBottom = Color(0xff172022);

  //---------------------------------4----------------------------------//
  //Middle
  static const Color actionButtonMiddleTop = Color(0xff353C3F);
  static const Color actionButtonMiddleBottom = Color(0xff172022);

  //--------------------------------------------------------------------//
  //----------------------------ActionButton----------------------------//
  //--------------------------------------------------------------------//

  //--------------------------------------------------------------------//
  //-----------------------------Dex Button-----------------------------//
  //--------------------------------------------------------------------//

  static const Color startButton = Color(0xff0F6594);
  static const Color startButtonBorder = Color(0xff3B557B);
  static const Color selectButton = Color(0xffA51A17);
  static const Color selectButtonBorder = Color(0xffBC1F21);

  //--------------------------------------------------------------------//
  //-----------------------------Dex Button-----------------------------//
  //--------------------------------------------------------------------//

  //--------------------------------------------------------------------//
  //-----------------------------Directional-----------------------------//
  //--------------------------------------------------------------------//

  static const Gradient directionalGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff5B6164),
      Color(0xff18191A),
    ],
  );

  //--------------------------------------------------------------------//
  //-----------------------------Directional-----------------------------//
  //--------------------------------------------------------------------//
}
