import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fudextask/features/productHistory/data/model/Product.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitialState()) {
    loadProducts();
  }
  // am sory for that i should store data local but i dont have enough time
  List<Product> _allProducts = [
    Product(
        id: '1',
        name: 'شنطة حريمى هاند ميد خوص',
        images: [
          'assets/images/Ellipse.png',
          'assets/images/Ellipse.png',
        ],
        colors: [
          Color(0xFFC09B7F),
          Colors.black,
          Color(0xFFFBBF24),
          Color(0xFF149911),
        ],
        sizes: ["M", "L", "XL", "XXL"],
        price: 300,
        category: 'شنط',
        isActive: true),
    Product(
        id: '2',
        name: 'شنطة رجالي ',
        images: [
          'assets/images/Ellipse.png',
          'assets/images/Ellipse.png',
        ],
        price: 300,
        category: 'شنط',
        isActive: true),
    Product(
        id: '3',
        name: 'شنطة حريمى هاند ميد خوص',
        images: [
          'assets/images/Ellipse.png',
          'assets/images/Ellipse.png',
        ],
        colors: [
          Color(0xFFC09B7F),
          Colors.black,
          Color(0xFFFBBF24),
          Color(0xFF149911),
        ],
        sizes: ["M", "L", "XL", "XXL"],
        price: 300,
        category: 'شنط',
        isActive: true),
  ];

  Timer? _searchTimer;

  void loadProducts() {
    emit(ProductLoadingState());
    emit(ProductLoadedState(_allProducts));
  }

  void searchProducts(String query) {
    _searchTimer?.cancel();

    _searchTimer = Timer(Duration(seconds: 2), () {
      emit(ProductLoadingState());
      final filteredProducts = _allProducts
          .where((product) =>
              product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();

      emit(ProductLoadedState(filteredProducts));
    });
  }

  void choiseDepartment(String query) {
    emit(ProductLoadingState());
    final filteredProducts =
        _allProducts.where((product) => product.category == query).toList();

    emit(ProductLoadedState(filteredProducts));
  }

  void deleteProduct(String productId) {
    final updatedProducts =
        _allProducts.where((product) => product.id != productId).toList();

    _allProducts = updatedProducts;
    emit(ProductLoadedState(_allProducts));
  }

  void activateProduct(String productId) {
    _allProducts = _allProducts.map((product) {
      return product.id == productId
          ? product.copyWith(isActive: !product.isActive)
          : product;
    }).toList();
  }
}
