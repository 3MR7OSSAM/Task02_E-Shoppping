import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task02/core/global_widgets/custom_image.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/data/models/cart_model.dart';
import 'package:task02/presentation/pages/cart/bloc/cart_cubit.dart';

Widget cartItemWidget(BuildContext context, CartItem item) {
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
            CustomImage(imageUrl: item.imageUrl,),

            // Item details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(item.variant),
                            Text("\$${item.price}", style: const TextStyle(color: Colors.black54)),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                if (item.quantity > 1) {
                                  BlocProvider.of<CartCubit>(context).updateQuantity(item, item.quantity - 1);
                                }
                              },
                            ),
                            Text('${item.quantity}'),
                            IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                BlocProvider.of<CartCubit>(context).updateQuantity(item, item.quantity + 1);
                              },
                            ),

                          ],
                        ),

                      ],
                    ),
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
