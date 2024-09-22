import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/core/theme/manger/text_styles.dart';
import 'package:task02/presentation/pages/category/view/category_page.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.icon, required this.title});
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryPage(category: title,)));
      },
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: Material(
          color: ColorManger.kWhiteColor,
          borderRadius: BorderRadius.circular(16),
          child: Column(
            children: [
              Image.asset(icon),
              const SizedBox(height: 3,),
              Text(title,style: TextStyles.textStyle12,)
            ],
          ),
        ),
      ),
    );
  }
}
