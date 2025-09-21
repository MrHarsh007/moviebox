import 'dart:math';
import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryColor = Colors.red; // Full opacity
  static const Color primary1Color = Color.fromRGBO(
    126,
    179,
    213,
    0.5,
  ); // 50% opacity
  static const Color primaryBGColor = Color.fromRGBO(
    126,
    179,
    213,
    0.15,
  ); // 15% opacity

  static const Color secondaryPrimary = Color(0XFF001F3E);

  static const Color primarytransColor = Color(0xffFFFBEB);
  static const Color splashScreenBGColor = Color(0xFFFFF3C3);
  static const Color cardColor = Color(0xFF1F2125);
  static const Color greyFontColor = Color.fromRGBO(30, 30, 30, 0.2);
  static const Color cardDarkGreenColor = Color(0xFF2E312E);
  static const Color primaryColorDark = Color(0xFFF4F4F4);
  static const Color primaryColorLight = Color(0xFFF4F4F4);
  static const Color whiteLilac = Color.fromRGBO(248, 250, 252, 1);
  static const Color blackPearl = Color.fromRGBO(30, 31, 43, 1);
  static const Color brinkPink = Color.fromRGBO(255, 97, 136, 1);
  static const Color juneBud = Color.fromRGBO(186, 215, 97, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color nevada = Color(0xff6B7280);
  static const Color ebonyClay = Color.fromRGBO(40, 42, 58, 1);
  static const Color grey = Color.fromRGBO(87, 108, 138, 1);
  static const Color lightGrey = Color.fromRGBO(247, 247, 247, 1);
  static const Color whiteBG = Color(0xffF7F7F7);
  static const Color black = Color(0xff000000);
  static const Color greyScale = Color(0xfff3f4f8);
  static const Color grayScale5 = Color(0xff5B5D6B);
  static const Color grayScale7 = Color(0xff404252);
  static const Color grayScale9 = Color(0xff101223);
  static const Color randomCardColor1 = Color.fromRGBO(0, 122, 175, 1);
  static const Color randomCardColor2 = Color.fromRGBO(72, 79, 89, 1);
  static const Color blueShade1 = Color(0xffdff3ff);
  static const Color blueShade2 = Color(0xffE9F7FF);
  static const Color darkBlueShade2 = Color(0xff001b2b);
  static const Color gryShade = Color(0xffF9F9F9);
  static const Color navyShade = Color.fromRGBO(0, 112, 175, 1);
  static const Color secondaryGreen = Color(0xff47c87a);
  static const Color randomBG = Color(0xffeee5ff);
  static const Color transparent = Colors.transparent;
  static const Color greyScale5 = Color(0xff5B5D6B);
  static const Color greyScale7 = Color(0xff404252);
  static const Color textFieldBg = Color(0xffF1F1F1);
  static const Color red = Color(0xffFF4242);
  static const Color orange = Colors.orange;
  static Color containerBGcolor = Colors.grey.shade100;
  static const Color settingBackground = Color.fromRGBO(250, 250, 250, 1);
  static const Color greenBackground = Color.fromRGBO(236, 249, 248, 1);
  static const Color redColor = Color.fromRGBO(238, 10, 10, 1);
  static const Color dividerColor = Color.fromRGBO(157, 164, 158, 0.1);

  static const Color gray500 = Color.fromRGBO(157, 164, 158, 1);
  static const Color couponColor = Color.fromARGB(255, 255, 115, 0);

  static const Color riderContBorderColor = Color(0xffF2F4F7);

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  Color generateRandomColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  //chart colors
  static List<Color> chartColorPalette = const [
    Color(0xFFFDE725),
    Color(0xFF95D840),
    Color(0xFF20A387),
    Color(0xFF2D708E),
    Color(0xFF453781),
    Color(0xFF440154),
  ];
}
