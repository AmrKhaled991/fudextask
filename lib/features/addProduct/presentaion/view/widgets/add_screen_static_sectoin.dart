// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/features/addProduct/models/CustomSectionModel.dart';
import 'package:fudextask/features/addProduct/models/CutomProductTextFieldModle.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/CustomSection.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/custom_drop_button_add_screen.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/custom_drop_sub_product_add_screen.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/cutom_product_text_field.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/prodcut_image_section.dart';

class AddScreenStaticSectoin extends StatelessWidget {
  const AddScreenStaticSectoin({
    super.key,
    required this.productNameController,
    required this.productPriceController,
  });

  final TextEditingController productNameController;
  final TextEditingController productPriceController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSection(
          customSectionModel: CustomSectionModel(
            text: "صور المنتج",
            // am sory for taht but i dont have time for refactoring
            widget: ProductImageSection(),
          ),
        ),
        CustomSection(
          customSectionModel: CustomSectionModel(
            text: "اسم المنتج",
            widget: CutomProductTextField(
              extFieldemum: TextFieldemum.name,
              cutomProductTextFieldModel: CutomProductTextFieldModel(
                maxLine: 1,
                productNameController: productNameController,
                hintText: "من فضلك اضف اسم للمنتج",
              ),
            ),
          ),
        ),
        MainAndSubCategorySction(),
        CustomSection(
          customSectionModel: CustomSectionModel(
            text: "سعر المنتج",
            widget: CutomProductTextField(
              extFieldemum: TextFieldemum.price,
              cutomProductTextFieldModel: CutomProductTextFieldModel(
                maxLine: 1,
                productNameController: productPriceController,
                hintText: "يرجا كتابة المنتج ب ر.س",
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MainAndSubCategorySction extends StatelessWidget {
  const MainAndSubCategorySction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSection(
          customSectionModel: CustomSectionModel(
            text: "القسم الرئيسى *",
            widget: CustomDropMainProductAddScreen(),
          ),
        ),
         CustomSection(
            customSectionModel: CustomSectionModel(
              text: "القسم الفرعى *",
              widget: CustomDropSubProductAddScreen(),
            ),
          ),
      ],
    );
  }
}
