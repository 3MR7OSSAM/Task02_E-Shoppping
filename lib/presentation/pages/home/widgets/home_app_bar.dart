import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/core/theme/manger/text_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Welcome Back!',
          style:TextStyle(color: ColorManger.kPrimaryColor,fontSize: 20,fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(
          FontAwesomeIcons.opencart,
          color: ColorManger.iconsColor,
        ),
        SizedBox(width: 20,),
        Icon(
          FontAwesomeIcons.bell,
          color: ColorManger.iconsColor,
        ),
      ],
    );
  }
}
