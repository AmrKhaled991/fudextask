// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fudextask/core/utils/globalModles/CustomTextButtonModels.dart';
import 'package:fudextask/core/utils/globalWidgets/custom_appbar.dart';
import 'package:fudextask/core/utils/globalWidgets/custom_floating_action_button.dart';
import 'package:fudextask/features/addProduct/models/CustomTextButtonModels.dart';
import 'package:fudextask/features/addProduct/presentaion/view/AddProdcutScreen.dart';
import 'package:fudextask/features/addProduct/presentaion/cubit/add_product_cubit.dart';
import 'package:fudextask/features/productHistory/presentatoin/view/widgets/custom_drop_button.dart';
import 'package:fudextask/features/productHistory/presentatoin/view/widgets/custom_search_bar.dart';
import 'package:fudextask/features/productHistory/presentatoin/view/widgets/custom_slivers_products_card.dart';

class ProductHistoryScreen extends StatelessWidget {
  const ProductHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        CustomAppbar(
            customAppbarModel: CustomAppbarModel(
          text: 'سجل المنتجات',
          callback: () {},
        )),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                SliverToBoxAdapter(
                  child: CustomSearchBar(searchController: searchController),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                SliverToBoxAdapter(child: CustomDropButtonhHistroyScreen()),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                CustomSliversProductsCard(),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 116,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
      floatingActionButton: CustomFloatingActionButton(
        customTextButtonModels: CustomTextButtonModels(
            text: 'أضافة منتج',
            callback: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BlocProvider(
                        create: (context) => AddProductCubit(),
                        child: const Directionality(
                          textDirection: TextDirection.rtl,
                          child:  AddProdcutScreen()))),
              );
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
