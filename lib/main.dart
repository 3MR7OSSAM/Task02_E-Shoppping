// main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task02/controller/nav_cubit.dart';
import 'package:task02/controller/pages_controller.dart';
import 'package:task02/core/theme/manger/assets_manger.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/presentation/pages/cart/bloc/cart_cubit.dart';
import 'presentation/pages/favourate/bloc/wishes_cubit.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: ColorManger.kPrimaryColor, // Your desired color
    statusBarIconBrightness: Brightness.light, // Adjust icon brightness
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Set to your design's base size
      minTextAdapt: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            // Lazy initialization for better performance
            BlocProvider(lazy: false, create: (_) => BottomNavCubit()),
            BlocProvider(lazy: false, create: (_) => WishesCubit()),
            BlocProvider(lazy: false, create: (_) => CartCubit()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'E-Shopping',
            theme: ThemeData(
              fontFamily: AssetsManger.defaultFont,
              scaffoldBackgroundColor: ColorManger.kWhiteColor,
              colorScheme: ColorScheme.fromSeed(
                seedColor: ColorManger.kWhiteColor,
              ),
              useMaterial3: true,
            ),
            home: const PagesController(),
          ),
        );
      },
    );
  }
}
