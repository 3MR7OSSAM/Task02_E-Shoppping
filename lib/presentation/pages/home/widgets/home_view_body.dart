import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/core/theme/manger/text_styles.dart';
import 'package:task02/data/models/categories.dart';
import 'package:task02/data/models/products.dart';
import 'package:task02/presentation/pages/home/widgets/categories_list_view.dart';
import 'package:task02/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:task02/presentation/pages/home/widgets/product_card.dart';
import 'package:task02/presentation/pages/home/widgets/sales_list_view.dart';
import 'package:task02/presentation/pages/search/pages/search_page.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(),
            SearchBar(),
            SalesListView(),
            CategoriesListView(),
            RecentProductsRow(),
            ProductGridView()
          ],
        ),
      ),
    );
  }
}

class RecentProductsRow extends StatelessWidget {
  const RecentProductsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Text(
          'Recent products',
          style: TextStyles.textStyle16,
        ),
        Spacer(),
        Text(
          'View All',
          style: TextStyle(color: ColorManger.kPrimaryColor,),
        ),

      ],
    );
  }
}
class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      // height: .8.sh,
      child: GridView.builder(
          itemCount: products.length-7,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.66), itemBuilder:  (BuildContext context, int index){
        return ProductCard(productId: products[index].id,);
      }),
    );
  }
}
class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: 20.h),
      child: InkWell(

        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchPage()));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey.shade400
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                 Icon(FontAwesomeIcons.search,color: Colors.grey.shade400,size: 15,),
                const SizedBox(width: 5,),
                Text('Search for something...',style: TextStyle(color: Colors.grey.shade400),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

