// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:fudextask/core/globalWidgets/custom_text_button.dart';
import 'package:fudextask/features/addProduct/models/CustomTextButtonModels.dart';

class CustomFloatingActionButton extends StatelessWidget {
    CustomTextButtonModels customTextButtonModels;

   CustomFloatingActionButton({
    super.key,
    required this.customTextButtonModels,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        customShadow()
      ]),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      width: double.infinity,
      child: CustomTextButton(
        customTextButtonModels: customTextButtonModels,
      ),
    );
  }

  BoxShadow customShadow() {
    return const BoxShadow(
        color: Color(0x3F000000),
        blurRadius: 7,
        offset: Offset(0, 0),
        spreadRadius: 0,
      );
  }
}
