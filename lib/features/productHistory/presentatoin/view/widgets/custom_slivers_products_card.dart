import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fudextask/features/productHistory/presentatoin/manger/cubit/product_cubit.dart';
import 'package:fudextask/features/productHistory/presentatoin/view/widgets/prodcut_card.dart';

class CustomSliversProductsCard extends StatelessWidget {
  const CustomSliversProductsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoadingState) {
          return Center(child: CircularProgressIndicator());
        }
         else if (state is ProductLoadedState) {
          if (state.products.isEmpty) {
            return SliverToBoxAdapter(child: Center(child: Text('No products found.')));
          }
          return SliverList.separated(
            itemCount: state.products.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 14,
            ),
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {},
                child: ProdcutCard(
                  product: state.products[index],
                )),
          );
        } else if (state is ProductErrorState) {
          return Center(child: Text('Error: ${state.error}'));
        }
        return Center(child: Text('No products available.'));
      },
    );
  }
}
