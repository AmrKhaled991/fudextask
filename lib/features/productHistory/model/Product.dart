import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String category;
  final List<String> images;
  final double price;
  final List<String>? sizes;
  final List<Color>? colors;
  final List<String>? keywords;
  final bool isActive;
  final String? disc;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.images,
    required this.price,
    this.sizes,
    this.colors,
    this.keywords,
    this.isActive = true,
    this.disc,
  });

  // Add the copyWith method
  Product copyWith({
    String? id,
    String? name,
    String? category,
    List<String>? images,
    double? price,
    List<String>? sizes,
    List<Color>? colors,
    List<String>? keywords,
    bool? isActive,
    String? disc,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      images: images ?? this.images,
      price: price ?? this.price,
      sizes: sizes ?? this.sizes,
      colors: colors ?? this.colors,
      keywords: keywords ?? this.keywords,
      isActive: isActive ?? this.isActive,
      disc: disc ?? this.disc,
    );
  }
}
