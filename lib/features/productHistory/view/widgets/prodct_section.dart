import 'package:flutter/material.dart';
import 'package:fudextask/core/globalUtils/App_assets.dart';
import 'package:fudextask/features/productHistory/view/widgets/product_info.dart';

class ProdctSection extends StatelessWidget {
  const ProdctSection({
    super.key,
  });

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
                    Assets.imagesEllipse,
                    fit: BoxFit.cover ,
                  ),
               ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 5,
                child: const ProductInfo()),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
    );
  }
}
