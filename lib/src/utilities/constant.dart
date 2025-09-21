// ignore_for_file: constant_identifier_names

import 'dart:io';
import 'package:flutter/material.dart';

const double MARGIN = 18;
const double RADIUS = 8;
const double SPACE8 = 8;
const double SPACE4 = 4;
const double SPACE12 = 12;
const double SPACE15 = 15;
const double SPACE25 = 25;

/// ------------------------------------ All Screen Padding ------------------------
EdgeInsets allScreenPadding({
  double iosTop = 60.0,
  double androidTop = 50.0,
  double androidBottom = 16.0,
  double iosBottom = 16.0,
  double left = 16.0,
  double right = 16.0,
}) {
  double top = Platform.isIOS ? iosTop : androidTop;
  double bottom = Platform.isIOS ? iosBottom : androidBottom;
  return EdgeInsets.only(right: right, left: left, top: top, bottom: bottom);
}

/// ------------------------------------ App Constants ------------------------
const String APP_NAME = 'Movies Box';
const String APP_SUPPORT_EMAIL = 'porwalharsh007@gmail.com';
const double SPACE_BETWEEN_WIDGET = 15;

/// ------------------------------------ Adds Id ------------------------
const String BANNER_AD_UNIT_ID = 'ca-app-pub-3940256099942544/6300978111';

const String IS_FIRST_TIME_USER = 'is_first_time_user';
