
import 'package:flutter/material.dart';

class CutomProductTextFieldModel{
  const CutomProductTextFieldModel({
    required this.maxLine,
    required this.productNameController,
    required this.hintText,
  });

  final int maxLine;
  final TextEditingController productNameController;
  final String hintText;
}