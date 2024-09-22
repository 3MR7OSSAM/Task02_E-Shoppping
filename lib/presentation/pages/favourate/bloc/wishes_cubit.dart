import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:task02/data/models/wishes_model.dart';

// Define the Cubit state for wishes
class WishesCubit extends Cubit<List<WishesItem>> {
  WishesCubit() : super([]);

  // Add item to wishes only if it doesn't already exist
  void addWish(WishesItem item) {
    if (!isInWishes(item)) {
      emit([...state, item]);
    } else {
      // You might want to show a message to the user
      // For example, using a SnackBar
      print("Item already in wishes");
    }
  }

  // Remove item from wishes
  void removeWish(String id) {
    emit(state.where((i) => i.id != id).toList());
  }

  // Clear all items from wishes
  void clearWishes() {
    emit([]);
  }

  // Check if an item is already in the wishes
  bool isInWishes(WishesItem item) {
    return state.any((i) => i.id == item.id);
  }
}
