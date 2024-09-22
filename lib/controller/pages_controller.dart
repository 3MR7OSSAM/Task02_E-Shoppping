// pages_controller.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task02/controller/nav_cubit.dart';
import 'package:task02/core/global_widgets/button_nav.dart';
import 'package:task02/presentation/pages/cart/views/cart_page.dart';
import 'package:task02/presentation/pages/favourate/views/favourate_page.dart';
import 'package:task02/presentation/pages/home/views/home_view.dart';
import 'package:task02/presentation/pages/user/views/user_view.dart';

class PagesController extends StatelessWidget {
  const PagesController({super.key});

  static const List<Widget> _pages = [
    HomeView(),
    FavPage(),
    CartPage(),
    UserView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<BottomNavCubit, int>(
          builder: (context, selectedIndex) {
            return _pages[selectedIndex];
          },
        ),
        bottomNavigationBar: const ButtonNav(),
      ),
    );
  }
}
