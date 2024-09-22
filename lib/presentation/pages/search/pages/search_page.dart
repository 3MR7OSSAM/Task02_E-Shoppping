import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/data/models/products.dart';
import 'package:task02/presentation/pages/home/widgets/product_card.dart';
import 'package:task02/presentation/pages/search/bloc/search_cubit.dart';

import '../widets/search_bar.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(products), // Pass your product list here
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        FontAwesomeIcons.chevronLeft,
                        color: ColorManger.kGreyColor,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 0.40.sh, child: const CustomSearchBar()),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                    if (state is SearchSuccess) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          itemCount: state.products.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.66,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return ProductCard(productId: state.products[index].id);
                          },
                        ),
                      );
                    } else {
                       return Padding(
                         padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          itemCount: products.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.66,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return ProductCard(productId: products[index].id);
                          },
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
