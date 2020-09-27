import 'package:flutter/material.dart';

final ThemeData ummaTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xffffffff),
  fontFamily: 'Open Sans',
  brightness: Brightness.light,
  primaryColor: Colors.white,
  accentColor: Color(0xff558B2F),
  dividerColor: Color(0xffD1D1D6),
  disabledColor: Color(0x62052B32),
  // primaryColor: Color(0xff558B2F),
  primaryColorBrightness: Brightness.light,
  appBarTheme: AppBarTheme(
    elevation: 0,
  ),
  iconTheme: IconThemeData(
    color: Color(0xff052B32),
  ),
  accentIconTheme: IconThemeData(
    color: Color(0xff558B2F),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
      subtitle1: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
      headline6: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w700,
      ),
      bodyText1: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        height: 1.15,
      )),
  primaryTextTheme: TextTheme(
    caption: TextStyle(
      fontSize: 12,
      color: Color(0xff052B32),
      fontWeight: FontWeight.w600,
    ),
    headline6: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w700,
      color: Color(0xff3D3D3D),
    ),
  ),
  accentTextTheme: TextTheme(
    headline6: TextStyle(
      fontSize: 15,
      color: Color(0xff558B2F),
      fontWeight: FontWeight.w700,
    ),
    caption: TextStyle(
      fontSize: 12,
      color: Color(0xff558B2F),
      fontWeight: FontWeight.w600,
    ),
    bodyText2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
      color: Color(0xff558B2F),
    ),
  ),
  buttonTheme: ButtonThemeData(
    height: 20,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
  ),
);
