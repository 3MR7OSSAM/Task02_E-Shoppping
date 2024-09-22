import 'package:flutter/cupertino.dart';
import 'package:task02/core/theme/manger/color_manger.dart';

abstract class TextStyles{
  static const  textStyle30 = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: ColorManger.kPrimaryLightColor,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: ColorManger.kPrimaryLightColor,

  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: ColorManger.kGreyColor,
  );
  static const textStyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: ColorManger.kGreyColor,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: ColorManger.kGreyColor,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: ColorManger.kPrimaryLightColor,

  );  static const textStyle25 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.normal,
    color: ColorManger.kPrimaryLightColor,

  );
  static const redItalicStyle = TextStyle(
          color: ColorManger.kBlackColor,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          fontFamily: 'DancingScript',
        );

}