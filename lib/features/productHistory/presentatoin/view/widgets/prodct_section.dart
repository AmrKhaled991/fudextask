// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fudextask/features/productHistory/data/model/Product.dart';
import 'package:fudextask/features/productHistory/presentatoin/view/widgets/product_info.dart';

class ProdctSection extends StatelessWidget {
    final Product product;

  const ProdctSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Expanded(
                flex: 3,
                 child: Image.asset(
                   product.images.first,
                    fit: BoxFit.cover ,
                  ),
               ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 5,
                child:  ProductInfo(product: product)),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
    );
  }
}
