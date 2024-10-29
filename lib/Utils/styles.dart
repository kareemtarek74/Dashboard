import 'package:dashboard/Utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: const Color(0xff064061));
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xffFFFFFF),
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFotSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .5;
  double upperLimit = fontSize * 1.2;

  return responsiveFotSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 650;
  } else if (width < SizeConfig.disktop) {
    return width / 1100;
  } else {
    return width / 1600;
  }
}
