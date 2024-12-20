// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fudextask/core/globalUtils/App_assets.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';
import 'package:fudextask/features/productHistory/data/model/Product.dart';
import 'package:fudextask/features/productHistory/presentatoin/manger/cubit/product_cubit.dart';
import 'package:fudextask/features/productHistory/presentatoin/view/widgets/custom_switcher.dart';
import 'package:fudextask/features/productHistory/presentatoin/view/widgets/prodct_section.dart';

class ProdcutCard extends StatelessWidget {
  final Product product;
  const ProdcutCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x26717171),
            blurRadius: 10,
            offset: Offset(-2, 2),
            spreadRadius: -1,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('تفعيل المنتج', style: Styles.textNormalTajawal13()),
                  Spacer(),
                  CustomSwitcher(
                    isActive: product.isActive,
                    id: product.id,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  InkWell(
                      onTap: () => BlocProvider.of<ProductCubit>(context)
                          .deleteProduct(product.id),
                      child: SvgPicture.asset(Assets.imagesTrash)),
                ],
              ),
            ),
            Divider(),
            ProdctSection(product: product,)
          ],
        ),
      ),
    );
  }
}
