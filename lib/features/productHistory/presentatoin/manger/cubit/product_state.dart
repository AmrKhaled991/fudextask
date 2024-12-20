part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

class ProductInitialState extends ProductState {}

class ProductLoadingState extends ProductState {}

class ProductLoadedState extends ProductState {
  final List<Product> products;
  ProductLoadedState(this.products);
}

class ProductErrorState extends ProductState {
  final String error;
  ProductErrorState(this.error);
}
