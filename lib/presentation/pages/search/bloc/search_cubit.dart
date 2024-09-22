import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task02/data/models/products.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final List<Product> products;

  SearchCubit(this.products) : super(SearchInitial());

  void search(String query) {
    if (query.isEmpty) {
      emit(SearchInitial());
    } else {
      final filteredProducts = products
          .where((product) => product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
      emit(SearchSuccess(filteredProducts));
    }
  }
}
