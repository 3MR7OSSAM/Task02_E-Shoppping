import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task02/data/models/categories.dart';
import 'package:task02/main.dart';
import 'package:task02/presentation/pages/home/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(
            icon: categories[index].icon,
            title: categories[index].name,
          );
        },
      ),
    );
  }
}
