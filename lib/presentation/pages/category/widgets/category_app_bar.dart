import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task02/core/theme/manger/color_manger.dart';

class CategoryAppBar extends StatelessWidget {
  const CategoryAppBar({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: ColorManger.kGreyColor,
            size: 20,

          ),
        ),
        const SizedBox(width: 10,),
        const Spacer(flex: 2,),
        Text(
          category,
          style:const TextStyle(color: ColorManger.kPrimaryColor,fontSize: 20,fontWeight: FontWeight.bold,),
        ),
        const Spacer(flex: 3,),

      ],
    );
  }
}
