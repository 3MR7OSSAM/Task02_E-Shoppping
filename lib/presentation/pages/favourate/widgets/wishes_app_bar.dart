import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task02/core/theme/manger/color_manger.dart';

class WishAppBar extends StatelessWidget {
  const WishAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Row(
      children: [
        Icon(
          FontAwesomeIcons.chevronLeft,
          color: ColorManger.kGreyColor,
          size: 20,

        ),
        SizedBox(width: 10,),
        Text(
          'Your Wishes',
          style:TextStyle(color: ColorManger.kGreyColor,fontSize: 18,fontWeight: FontWeight.normal),
        ),

      ],
    );
  }
}
