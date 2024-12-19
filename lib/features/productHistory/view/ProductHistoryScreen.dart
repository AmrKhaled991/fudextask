// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fudextask/core/globalUtils/App_assets.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';
import 'package:fudextask/core/globalWidgets/custom_appbar.dart';
import 'package:fudextask/core/globalWidgets/custom_floating_action_button.dart';
import 'package:fudextask/features/productHistory/view/widgets/custom_drop_button.dart';
import 'package:fudextask/features/productHistory/view/widgets/custom_search_bar.dart';
import 'package:fudextask/features/productHistory/view/widgets/custom_slivers_products_card.dart';

class ProductHistoryScreen extends StatelessWidget {
  const ProductHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
   var mediaQuery =MediaQuery.of(context);
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        CustomAppbar(
          title: 'سجل المنتجات',
          callbackAction: () {},
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, ),
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
                SliverToBoxAdapter(child: CustomDropButton()),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                CustomSliversProductsCard(),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 116 ,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
    bottom: mediaQuery.viewInsets.bottom -
             mediaQuery.viewPadding.bottom,
  ),
        child: CustomFloatingActionButton(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
