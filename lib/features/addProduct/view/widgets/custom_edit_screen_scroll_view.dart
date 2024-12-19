// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/core/globalModles/DropListModel%20.dart';
import 'package:fudextask/features/addProduct/models/CustomSectionModel.dart';
import 'package:fudextask/features/addProduct/models/CutomProductTextFieldModle.dart';
import 'package:fudextask/features/addProduct/view/widgets/CustomSection.dart';
import 'package:fudextask/features/addProduct/view/widgets/CustomDropawnColor.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_dropawn_key_words.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_dropawn_sized.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_product_status.dart';
import 'package:fudextask/features/addProduct/view/widgets/cutom_product_text_field.dart';
import 'package:fudextask/features/addProduct/view/widgets/prodcut_image_section.dart';
import 'package:fudextask/features/productHistory/view/widgets/custom_drop_button.dart';

class CustomEditScreenScrollView extends StatelessWidget {
  CustomEditScreenScrollView({
    super.key,
    required this.productNameController,
    required this.productPriceController,
    required this.productDisceController,
  });

  final TextEditingController productNameController;
  final TextEditingController productPriceController;
  final TextEditingController productDisceController;

  List<CustomSectionModel> get scetionsList => [
        CustomSectionModel(text: "صور المنتج", widget: ProductImageSection()),
        CustomSectionModel(
            text: "اسم المنتج",
            widget: CutomProductTextField(
              cutomProductTextFieldModel: CutomProductTextFieldModel(
                  maxLine: 1,
                  productNameController: productNameController,
                  hintText: "من فضلك اضف اسم للمنتج"),
            )),
        CustomSectionModel(
            text: "القسم الرئيسى *",
            widget: CustomDropButton(
              downTheme: DropDownTheme.EditProudctScreen,
            )),
        CustomSectionModel(
            text: "القسم الفرعى *",
            widget: CustomDropButton(
              downTheme: DropDownTheme.EditProudctScreen,
            )),
        CustomSectionModel(
            text: " سعر المنتج",
            widget: CutomProductTextField(
              cutomProductTextFieldModel: CutomProductTextFieldModel(
                  maxLine: 1,
                  productNameController: productPriceController,
                  hintText: "يرجا كتابة المنتج ب ر.س"),
            )),
        CustomSectionModel(
            text: "اضافات",
            widget: CustomDropButton(
              downTheme: DropDownTheme.EditProudctScreen,
            )),
        CustomSectionModel(text: "تحديد اللون", widget: CustomDropawnColor()),
        CustomSectionModel(text: "تحديد المقاس", widget: CustomDropawnSizes()),
        CustomSectionModel(
            text: "تحديد الكلمات الدالة", widget: CustomDropawnKeyWords()),
        CustomSectionModel(text: "حالة المنتج", widget: CustomProductStatus()),
        CustomSectionModel(
            text: " وصف المنتج",
            widget: CutomProductTextField(
              cutomProductTextFieldModel: CutomProductTextFieldModel(
                  maxLine: 3,
                  productNameController: productDisceController,
                  hintText: "يرجا كتابة وصف للمنتج"),
            ))
      ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 120),
      itemCount: scetionsList.length,
      itemBuilder: (context, index) => CustomSection(
        customSectionModel: scetionsList[index],
      ),
    );
  }
}

