import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task02/core/global_widgets/custom_button.dart';
import 'package:task02/core/theme/manger/color_manger.dart';

import 'package:task02/presentation/pages/favourate/bloc/wishes_cubit.dart';
import 'package:task02/presentation/pages/favourate/widgets/fav_app_bar.dart';
import 'package:task02/presentation/pages/favourate/widgets/wishes_item_widget.dart';
import '../../../../data/models/wishes_model.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          const FavouriteAppBar(),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: BlocBuilder<WishesCubit, List<WishesItem>>(
              builder: (context, wishes) {
                if (wishes.isEmpty) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/empty_wishes.png',width: 400.h,),
                      Text(
                        "No Wishes Found",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: ColorManger.kGreyColor,
                        ),
                      ),
                    ],
                  );
                }
                return ListView.builder(
                  itemCount: wishes.length,
                  itemBuilder: (context, index) {
                    final wishItem = wishes[index];
                    return wishesItemWidget(context, wishItem.id
                        // onRemove: () {
                        //   context.read<WishesCubit>().removeWish(wishItem);
                        // },
                        );
                  },
                );
              },
            ),
          ),
          CustomButton(
            onTap: () {
              BlocProvider.of<WishesCubit>(context).clearWishes();
            },
            bgColor: ColorManger.kPrimaryColor,
            height: 45,
            child: const Text(
              "Clear All Wishes",
              style: TextStyle(color: ColorManger.kWhiteColor),
            ),
          )
        ],
      ),
    );
  }
}
