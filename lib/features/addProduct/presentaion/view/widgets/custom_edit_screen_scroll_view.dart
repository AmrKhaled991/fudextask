// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/add_features_section.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/add_screen_static_sectoin.dart';

class CustomEditScreenScrollView extends StatelessWidget {
  CustomEditScreenScrollView({
    super.key,
    required this.productNameController,
    required this.productPriceController,
    required this.productDisceController,
  });

  final TextEditingController productNameController;
  final TextEditingController productPriceController;
  final TextEditingController productDisceController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 120),
      child: Column(
        children: [
          // First section explicitly defined
          AddScreenStaticSectoin(productNameController: productNameController, productPriceController: productPriceController),
          // Continue for the remaining sections...
          AddFeaturesSection(productDisceController: productDisceController),
        ],
      ),
    );
  }
}
