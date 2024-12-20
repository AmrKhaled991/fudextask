// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fudextask/core/globalUtils/Styles.dart';
import 'package:fudextask/features/productHistory/data/model/Product.dart';
import 'package:fudextask/features/productHistory/presentatoin/view/widgets/prdcut_avilable_color.dart';
import 'package:fudextask/features/productHistory/presentatoin/view/widgets/prdcut_avilable_size.dart';

class ProductInfo extends StatelessWidget {
  final Product product;
  const ProductInfo({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name,
          textAlign: TextAlign.right,
          style: Styles.textNormalTajawal16(),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          '${product.price} ر.س',
          textAlign: TextAlign.right,
          style: Styles.textBoldTajawal14(),
        ),
        const SizedBox(
          height: 12,
        ),
        product.sizes != null
            ? PrdcutAvilableSize(sizes: product.sizes!)
            : SizedBox(),
        const SizedBox(
          height: 10,
        ),
        product.colors != null
            ? PrdcutAvilableColor(colors: product.colors!)
            : SizedBox(),
      ],
    );
  }
}
