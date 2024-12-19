// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/core/globalWidgets/custom_text_button.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
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
        text: 'أضافة منتج',
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
