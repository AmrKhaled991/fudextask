// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fudextask/features/addProduct/models/CustomSectionModel.dart';
import 'package:fudextask/features/addProduct/models/CutomProductTextFieldModle.dart';
import 'package:fudextask/features/addProduct/view/manger/cubit/add_product_cubit.dart';
import 'package:fudextask/features/addProduct/view/widgets/CustomDropawnColor.dart';
import 'package:fudextask/features/addProduct/view/widgets/CustomSection.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_drop_button_add_screen_features.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_dropawn_key_words.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_dropawn_sized.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_product_status.dart';
import 'package:fudextask/features/addProduct/view/widgets/cutom_product_text_field.dart';

class AddFeaturesSection extends StatefulWidget {
  const AddFeaturesSection({
    super.key,
    required this.productDisceController,
  });

  final TextEditingController productDisceController;

  @override
  State<AddFeaturesSection> createState() => _AddFeaturesSectionState();
}

class _AddFeaturesSectionState extends State<AddFeaturesSection> {
  @override
  Widget build(BuildContext context) {
    final bloc=BlocProvider.of<AddProductCubit>(context);
    return Column(
      children: [
        CustomSection(
          customSectionModel: CustomSectionModel(
            text: "اضافات",
            widget: CustomDropButtonAddScreenFeatures(voidCallback: () {
              print("setstate");
              setState(() {
                
              });
            },),
          ),
        ),
       bloc.addFeatures.contains("اللون")? CustomSection(
          customSectionModel: CustomSectionModel(
            text: "تحديد اللون",
            widget: CustomDropawnColor(),
          ),
        ):SizedBox(),
        bloc.addFeatures.contains("المقاس")? CustomSection(
          customSectionModel: CustomSectionModel(
            text: "تحديد المقاس",
            widget: CustomDropawnSizes(),
          ),
        ):SizedBox(),
        bloc.addFeatures.contains("الكلمات")? CustomSection(
          customSectionModel: CustomSectionModel(
            text: "تحديد الكلمات الدالة",
            widget: CustomDropawnKeyWords(),
          ),
        ):SizedBox(),
         bloc.addFeatures.contains("الحالة")?CustomSection(
          customSectionModel: CustomSectionModel(
            text: "حالة المنتج",
            widget: CustomProductStatus(),
          ),
        ):SizedBox(),
        CustomSection(
          customSectionModel: CustomSectionModel(
            text: "وصف المنتج",
            widget: CutomProductTextField(
              extFieldemum: TextFieldemum.disc,
              cutomProductTextFieldModel: CutomProductTextFieldModel(
                maxLine: 3,
                productNameController: widget.productDisceController,
                hintText: "يرجا كتابة وصف للمنتج",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
