import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task02/core/global_widgets/custom_button.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/data/models/cart_model.dart';
import 'package:task02/presentation/pages/cart/bloc/cart_cubit.dart';
import 'package:task02/presentation/pages/cart/widgets/cart_app_bar.dart';
import 'package:task02/presentation/pages/cart/widgets/cart_item_widget.dart';
import 'package:task02/presentation/pages/cart/widgets/delavery_widget.dart';
import 'package:task02/presentation/pages/cart/widgets/total_section.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          const CartAppBar(),
          SizedBox(height: 10.h),
          deliveryInfo(),
          Expanded(
            child: BlocBuilder<CartCubit, List<CartItem>>(
              builder: (context, cartItems) {
                if (cartItems.isEmpty) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/empty_cart.png',width: 400.h,),
                      Text(
                        "Your cart is empty",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: ColorManger.kGreyColor,
                        ),
                      ),
                    ],
                  );
                }
                return ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    return cartItemWidget(context, cartItems[index]);
                  },
                );
              },
            ),
          ),
          totalSection(),
          const CustomButton(
            bgColor: ColorManger.kPrimaryColor,
            height: 45,
            child: Text(
              "Continue for payments",
              style: TextStyle(color: ColorManger.kWhiteColor),
            ),
          )
        ],
      ),
    );
  }
}
