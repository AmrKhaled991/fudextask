// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fudextask/core/globalModles/CustomTextButtonModels.dart';
import 'package:fudextask/core/globalModles/DropListModel%20.dart';
import 'package:fudextask/core/globalWidgets/custom_appbar.dart';
import 'package:fudextask/core/globalWidgets/custom_floating_action_button.dart';
import 'package:fudextask/features/addProduct/models/CustomTextButtonModels.dart';
import 'package:fudextask/features/productHistory/view/widgets/custom_drop_button.dart';
import 'package:fudextask/features/productHistory/view/widgets/custom_search_bar.dart';
import 'package:fudextask/features/productHistory/view/widgets/custom_slivers_products_card.dart';

class ProductHistoryScreen extends StatelessWidget {
  const ProductHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
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
                SliverToBoxAdapter(child: CustomDropButton(downTheme: DropDownTheme.ProductHistoryScreen,)),
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
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          bottom: mediaQuery.viewInsets.bottom - mediaQuery.viewPadding.bottom,
        ),
        child: CustomFloatingActionButton(
          customTextButtonModels:
              CustomTextButtonModels(text: 'أضافة منتج', callback: (){}),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
