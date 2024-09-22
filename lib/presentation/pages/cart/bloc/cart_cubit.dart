import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:task02/data/models/cart_model.dart';

// Define the Cubit state
class CartCubit extends Cubit<List<CartItem>> {
  CartCubit() : super([]);

  // Add item to cart
  void addItem(CartItem item) {
    emit([...state, item]);
  }

  // Remove item from cart
  void removeItem(CartItem item) {
    emit(state.where((i) => i != item).toList());
  }

  // Update quantity of item
  void updateQuantity(CartItem item, int newQuantity) {
    List<CartItem> updatedItems = state.map((i) {
      if (i == item) {
        return CartItem(
          name: i.name,
          variant: i.variant,
          price: i.price,
          imageUrl: i.imageUrl,
          quantity: newQuantity,
        );
      }
      return i;
    }).toList();

    emit(updatedItems);
  }

  // Get total price
  double getTotal() {
    double total = 0.0;
    for (var item in state) {
      total += double.parse(item.price.replaceAll('\$', '')) * item.quantity;
    }
    return total;
  }
}
