import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task02/data/models/cart_model.dart';
import 'package:task02/presentation/pages/cart/bloc/cart_cubit.dart';

Widget totalSection() {
  return BlocBuilder<CartCubit, List<CartItem>>(
    builder: (context, cartItems) {
      double total = BlocProvider.of<CartCubit>(context).getTotal();
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Totals",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text("\$${total.toStringAsFixed(2)}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18)),
          ],
        ),
      );
    },
  );
}
