import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task02/core/global_widgets/custom_button.dart';
import 'package:task02/core/global_widgets/custom_image.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/data/models/cart_model.dart';
import 'package:task02/data/models/products.dart';
import 'package:task02/data/models/wishes_model.dart';
import 'package:task02/presentation/pages/cart/bloc/cart_cubit.dart';
import 'package:task02/presentation/pages/favourate/bloc/wishes_cubit.dart';
import 'package:task02/presentation/pages/product_details/widgets/color_option.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.productId});
  final String productId;
  @override
  Widget build(BuildContext context) {
    Product product = products.firstWhere((element) => element.id == productId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManger.kWhiteColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Details product"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle shopping cart action
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image of the product
              CustomImage(imageUrl: product.imageUrl,),

              const SizedBox(height: 16),

              // Product name and price
              Text(
                product.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
               Text(
                "\$${product.price}  ( 219 people buy this )",
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 16),

              // Color selection
              const Text(
                "Choose the color",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ColorOption(Colors.pink),
                  ColorOption(Colors.grey),
                  ColorOption(Colors.green),
                  ColorOption(Colors.blue),
                  ColorOption(Colors.black),
                ],
              ),
              const SizedBox(height: 16),

              // Store information
              Row(
                children: [
                   CircleAvatar(
                    backgroundColor: Colors.black54,
                    radius: 20,
                    child: Text(product.store.split('')[0],style: TextStyle(color: Colors.white),),
                  ),
                  const SizedBox(width: 8),
                   Text(
                    product.store,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text("Follow"),
                  )
                ],
              ),
              const SizedBox(height: 16),

              // Product description
              const Text(
                "Description of product",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                "Aliquet arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. "
                "Neque viverra ipsum orci, morbi semper. Nulla bibendum purus tempor semper purus. "
                "Ut curabitur platea sed blandit. Amet non at proin justo nulla et. A, blandit morbi suspendisse.",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 24),

              // Action buttons
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: CustomButton(
                      bgColor: ColorManger.kPrimaryColor,
                      onTap: () {
                        BlocProvider.of<CartCubit>(context).addItem(CartItem(name: product.name, variant: product.category, price:'\$${product.price}', imageUrl: product.imageUrl));

                      },
                      child: const Text("Add to Cart",style: TextStyle(color: ColorManger.kWhiteColor),),
                    ),
                  ), Expanded(
                    flex: 1,
                    child: CustomButton(
                      bgColor: ColorManger.kWhiteColor,
                      onTap: () {

                        BlocProvider.of<WishesCubit>(context).addWish(WishesItem(id: product.id, name: product.name, variant: product.category, imageUrl: product.imageUrl));
                      },
                      child: const Icon(Icons.favorite_border,color: ColorManger.kPrimaryColor,)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
