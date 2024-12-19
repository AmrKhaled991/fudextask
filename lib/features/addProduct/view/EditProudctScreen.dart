import 'package:flutter/material.dart';
import 'package:fudextask/core/globalModles/CustomTextButtonModels.dart';
import 'package:fudextask/core/globalWidgets/custom_appbar.dart';
import 'package:fudextask/core/globalWidgets/custom_floating_action_button.dart';
import 'package:fudextask/features/addProduct/models/CustomTextButtonModels.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_edit_screen_scroll_view.dart';

class EditProudctScreen extends StatelessWidget {
  const EditProudctScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final TextEditingController productNameController = TextEditingController();
    final TextEditingController productPriceController = TextEditingController();
    final TextEditingController productDisceController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        CustomAppbar(
            customAppbarModel: CustomAppbarModel(
          text: 'تعديل',
          callback: () {},
        )),
        Expanded(
            child: CustomEditScreenScrollView(
                productNameController: productNameController,
                productPriceController: productPriceController,productDisceController: productDisceController,))
      ]),
      floatingActionButton: Padding(  
        padding: EdgeInsets.only(
          bottom: mediaQuery.viewInsets.bottom - mediaQuery.viewPadding.bottom,
        ),
        child: CustomFloatingActionButton(
          customTextButtonModels:
              CustomTextButtonModels(text: 'حفظ', callback: () {}),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
