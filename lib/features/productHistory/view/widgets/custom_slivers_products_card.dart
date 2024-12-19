import 'package:flutter/material.dart';
import 'package:fudextask/features/productHistory/view/widgets/prodcut_card.dart';

class CustomSliversProductsCard extends StatelessWidget {
  const CustomSliversProductsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList.separated(
      itemCount:7,
      separatorBuilder: (context, index) => const SizedBox(
        height: 14,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
        
        },
        child: ProdcutCard()
      ),
    );
  }
}