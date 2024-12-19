// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/features/addProduct/models/CutomProductTextFieldModle.dart';

class CutomProductTextField extends StatelessWidget {
  const CutomProductTextField({
    super.key,
    required this.cutomProductTextFieldModel,
  });

  final CutomProductTextFieldModel cutomProductTextFieldModel;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: cutomProductTextFieldModel.maxLine,
      controller: cutomProductTextFieldModel.productNameController,
      decoration: InputDecoration(
         isDense: true,                      // Added this
          contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Color(0x1E777777)),
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: const Color(0xFFF8F8F8),
          hintText: cutomProductTextFieldModel.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Color(0x1E777777)),
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}
