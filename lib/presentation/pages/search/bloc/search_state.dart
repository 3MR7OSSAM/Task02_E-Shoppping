part of 'search_cubit.dart';


abstract class SearchState extends Equatable {
  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchSuccess extends SearchState {
  final List<Product> products;

  SearchSuccess(this.products);

  @override
  List<Object> get props => [products];
}
