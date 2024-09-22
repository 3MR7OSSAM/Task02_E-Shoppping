import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task02/core/global_widgets/custom_image.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/data/models/products.dart';
import 'package:task02/presentation/pages/favourate/bloc/wishes_cubit.dart';


Widget wishesItemWidget(BuildContext context, String productId) {
  Product product = products.firstWhere((element) => element.id == productId);

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: SizedBox(
      height: 100.h,
      child: Material(
        borderRadius: BorderRadius.circular(8),
        color: ColorManger.kWhiteColor,
        surfaceTintColor: ColorManger.kWhiteColor,
        elevation: 10,
        child: Row(
          children: [
            // Image
            const SizedBox(width: 5,),
            SizedBox(
                width: 70,
                height: 70,
                child: CustomImage(imageUrl: product.imageUrl,)),

            // product details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text(product.category),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: (){
                          BlocProvider.of<WishesCubit>(context).removeWish(productId);
                        },
                        child: const Icon(Icons.favorite,color: ColorManger.kPrimaryColor,fill: 1,)),
                    const SizedBox(width: 10,)
                  ],
                ),
              ),
            ),

            // Quantity control and delete button
          ],
        ),
      ),
    ),
  );
}
