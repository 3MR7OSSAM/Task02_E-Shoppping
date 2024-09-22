import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task02/controller/nav_cubit.dart';
import 'package:task02/core/theme/manger/color_manger.dart';

class ButtonNav extends StatelessWidget {
  const ButtonNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, selectedIndex) {
        return BottomNavigationBar(
          elevation: 7,
          iconSize: 20,
          backgroundColor: ColorManger.kWhiteColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            context.read<BottomNavCubit>().updateIndex(index); // Update index using Cubit
          },
          selectedItemColor: ColorManger.kPrimaryColor,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.opencart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: 'Account',
            ),
          ],
        );
      },
    );
  }
}
