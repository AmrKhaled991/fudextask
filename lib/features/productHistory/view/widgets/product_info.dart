import 'package:flutter/material.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';
import 'package:fudextask/features/productHistory/view/widgets/prdcut_avilable_color.dart';
import 'package:fudextask/features/productHistory/view/widgets/prdcut_avilable_size.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'شنطة حريمى هاند ميد خوص',
          textAlign: TextAlign.right,
          style: Styles.textNormalTajawal16(),
        ),
        const SizedBox(height: 12,),
        Text(
          '300 رس',
          textAlign: TextAlign.right,
          style: Styles.textBoldTajawal14(),
        ),
                const SizedBox(height: 12,),

        PrdcutAvilableSize(),
                const SizedBox(height: 10,),

        PrdcutAvilableColor()
      ],
    );
  }
}
