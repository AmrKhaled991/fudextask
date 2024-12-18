import 'package:flutter/material.dart';

class Styles {
  static TextStyle textNormal18(BuildContext context) {
    return TextStyle(
      color: Color(0xFF010001),
      fontSize: 18,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textNormal16(BuildContext context) {
    return TextStyle(
      color: Color(0xFFCECECE),
      fontSize: 16,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textNormalWhite16(BuildContext context) {
    return TextStyle(
      color: Color(0xFFCECECE),
      fontSize: 16,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textNormal14(BuildContext context) {
    return TextStyle(
      color: Color(0xFF777777),
      fontSize: 14,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textNormal13(BuildContext context) {
    return TextStyle(
      color: Color(0xFF010001),
      fontSize: 13,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textBoldTajawal14(BuildContext context) {
    return TextStyle(
      color: Color(0xFF1C5CF2),
      fontSize: 14,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w700,
      height: 0,
    );
  }

  static TextStyle textNormalTajawal16(BuildContext context) {
    return TextStyle(
      color: Color(0xFF353535),
      fontSize: 16,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }
  static TextStyle textNormalTajawalLight16(BuildContext context) {
    return TextStyle(
      color: Color(0xFF666666),
      fontSize: 16,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle textNormalTajawal10(BuildContext context) {
    return TextStyle(
      color: Color(0xFF353535),
      fontSize: 9.62,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }
 static TextStyle textMediumTajawal10(BuildContext context) {
    return TextStyle(
      color: Color(0xFFA8A8A8),
      fontSize: 9.62,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w500,
      height: 0,
    );
  }
  static TextStyle textNormalTajawal11(BuildContext context) {
    return TextStyle(
      color: Color(0xFF1C5CF2),
      fontSize: 11,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w400,
      height: 0.18,
      letterSpacing: -0.16,
    );
  }

  static TextStyle textNormalTajawal13(BuildContext context) {
    return TextStyle(
      color: Color(0xFF353535),
      fontSize: 13,
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w400,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}

class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;

  static late double width, height;

  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
