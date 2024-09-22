import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task02/data/models/products.dart';
import 'package:task02/presentation/pages/home/widgets/product_card.dart';
import '../widgets/category_app_bar.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    // Define categoryProducts based on the category
    final List<Product> categoryProducts = category == 'All'
        ? products
        : products.where((product) => product.category == category).toList();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CategoryAppBar(category: category),
              categoryProducts.isNotEmpty
                  ? Expanded(
                child: GridView.builder(
                  itemCount: categoryProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.66,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(productId: categoryProducts[index].id);
                  },
                ),
              )
                  : Center(child: Text('No Items For $category Right Now!')),
            ],
          ),
        ),
      ),
    );
  }
}
