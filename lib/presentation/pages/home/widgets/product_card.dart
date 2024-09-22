import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task02/core/global_widgets/custom_image.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/data/models/cart_model.dart';
import 'package:task02/data/models/products.dart';
import 'package:task02/main.dart';
import 'package:task02/presentation/pages/cart/bloc/cart_cubit.dart';
import 'package:task02/presentation/pages/product_details/product_details.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) {
    Product product = products.firstWhere((element) => element.id == productId);

    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetailPage(productId: productId)));
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            SizedBox(
              height: 120.h,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child:  Center(child: CustomImage(imageUrl: product.imageUrl,))
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product name
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  // Price
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorManger.kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            // Add to Cart button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManger.kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize:
                      const Size(double.infinity, 36), // Full width button
                ),
                onPressed: () {
                    BlocProvider.of<CartCubit>(context).addItem(CartItem(name: product.name, variant: product.category, price:'\$${product.price}', imageUrl: product.imageUrl));
                  },
                child: const Text(
                  'Add to cart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
