// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppThemes {
  AppThemes._();

  static const String font1 = 'Sf';

  static const Color _darkBackgroundColor = AppColor.black;
  static const Color _darkPrimaryColor = AppColor.primaryColor;
  static const Color _darkTextColor = AppColor.white;
  static const Color _darkTextSecondaryColor = Colors.white54;
  static const Color _darkBackgroundSecondaryColor = AppColor.greyScale;
  static const Color _darkBackgroundAppBarColor = AppColor.grayScale9;
  static final Color _darkBorderActiveColor = AppColor.white.withOpacity(0.4);
  static const Color _darkBorderErrorColor = Colors.redAccent;
  static const Color _darkBackgroundAlertColor = AppColor.brinkPink;
  static const Color _darkBackgroundActionTextColor = AppColor.white;
  static const Color _darkIconColor = AppColor.white;
  static const Color gray500 = Color.fromRGBO(157, 164, 158, 1);

  static const TextTheme _darkTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 40,
      color: _darkTextColor,
      fontWeight: FontWeight.w800,
      fontFamily: font1,
    ),
    headlineMedium: TextStyle(
      fontSize: 32,
      color: _darkTextColor,
      fontWeight: FontWeight.w700,
      fontFamily: font1,
    ),
    headlineSmall: TextStyle(
      fontSize: 26,
      color: _darkTextColor,
      fontWeight: FontWeight.w600,
      fontFamily: font1,
    ),
    titleLarge: TextStyle(
      fontSize: 18,
      color: _darkTextColor,
      fontWeight: FontWeight.w600,
      fontFamily: font1,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      color: _darkTextColor,
      fontWeight: FontWeight.w500,
      fontFamily: font1,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      color: _darkTextColor,
      fontWeight: FontWeight.w500,
      fontFamily: font1,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: _darkTextColor,
      fontWeight: FontWeight.w400,
      fontFamily: font1,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: _darkTextColor,
      fontWeight: FontWeight.w400,
      fontFamily: font1,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: _darkTextColor,
      fontWeight: FontWeight.w400,
      fontFamily: font1,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      color: _darkTextColor,
      fontWeight: FontWeight.w300,
      fontFamily: font1,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      color: _darkTextColor,
      fontWeight: FontWeight.w300,
      fontFamily: font1,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      color: _darkTextColor,
      fontWeight: FontWeight.w300,
      fontFamily: font1,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: font1,
    scaffoldBackgroundColor: _darkBackgroundColor,
    primaryColorDark: _darkPrimaryColor,
    secondaryHeaderColor: _darkBackgroundSecondaryColor,
    indicatorColor: _darkTextColor,
    checkboxTheme: const CheckboxThemeData(
      fillColor: WidgetStatePropertyAll(_darkPrimaryColor),
    ),

    radioTheme: const RadioThemeData(
      fillColor: WidgetStatePropertyAll(_darkPrimaryColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _darkPrimaryColor,
    ),
    cardTheme: CardThemeData(
      margin: EdgeInsets.zero,
      elevation: 0,
      color: AppColor.cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    appBarTheme: AppBarTheme(
      color: _darkBackgroundAppBarColor,
      iconTheme: const IconThemeData(color: _darkTextColor),
      toolbarTextStyle: _darkTextTheme.bodyMedium,
      titleTextStyle: _darkTextTheme.titleLarge,
      // systemOverlayStyle: const SystemUiOverlayStyle(
      //   statusBarColor: _darkBackgroundColor,
      //   statusBarIconBrightness: Brightness.dark,
      //   statusBarBrightness: Brightness.dark,
      // ),
    ),
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(color: Colors.white),
      backgroundColor: _darkBackgroundAlertColor,
      actionTextColor: _darkBackgroundActionTextColor,
    ),
    iconTheme: const IconThemeData(color: _darkIconColor),
    popupMenuTheme: const PopupMenuThemeData(color: _darkBackgroundAppBarColor),
    textTheme: _darkTextTheme,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: _darkPrimaryColor,
      // circularTrackColor: _darkBackgroundSecondaryColor,
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      buttonColor: _darkPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    unselectedWidgetColor: _darkPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: _darkTextTheme.titleLarge!.copyWith(
        fontSize: 14,
        color: Colors.white54,
      ),
      prefixStyle: const TextStyle(color: _darkIconColor),
      isDense: true,
      contentPadding: const EdgeInsets.all(16),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: _darkBackgroundSecondaryColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderActiveColor),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: _darkPrimaryColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      hoverColor: AppColor.transparent,
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: Colors.black45,
      filled: true,
      //focusColor: _darkBorderActiveColor,
    ),
    colorScheme: const ColorScheme.dark(primary: _darkTextColor),
    primaryColor: _darkPrimaryColor,
    listTileTheme: const ListTileThemeData(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: const IconThemeData(color: _darkPrimaryColor),
      unselectedIconTheme: const IconThemeData(color: _darkTextSecondaryColor),
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: _darkTextTheme.bodySmall,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: _darkTextSecondaryColor,
      selectedItemColor: _darkPrimaryColor,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: _darkBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: _darkBackgroundSecondaryColor,
      thickness: 2,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        animationDuration: const Duration(milliseconds: 2000),
        backgroundColor: const WidgetStatePropertyAll(Colors.lightBlue),
        textStyle: WidgetStatePropertyAll(_darkTextTheme.labelLarge),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        animationDuration: const Duration(milliseconds: 2000),
        backgroundColor: const WidgetStatePropertyAll(Colors.lightBlue),
        textStyle: WidgetStatePropertyAll(_darkTextTheme.labelLarge),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        animationDuration: const Duration(milliseconds: 2000),
        backgroundColor: const WidgetStatePropertyAll(_darkBackgroundColor),
        textStyle: WidgetStatePropertyAll(_darkTextTheme.labelLarge),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
        ),
        side: const WidgetStatePropertyAll(
          BorderSide(color: _darkPrimaryColor, width: 1),
        ),
      ),
    ),
  );
}
