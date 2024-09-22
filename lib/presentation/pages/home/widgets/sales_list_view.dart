import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesListView extends StatelessWidget {
  const SalesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 0.25.sh,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('assets/images/banner.jpg',width: 0.5.sh,),
          const SizedBox(width: 30,),
          Image.asset('assets/images/banner.jpg',width: 0.5.sh,),
          const SizedBox(width: 30,),

          Image.asset('assets/images/banner.jpg',width: 0.5.sh,),
        ],
      ),
    );
  }
}
