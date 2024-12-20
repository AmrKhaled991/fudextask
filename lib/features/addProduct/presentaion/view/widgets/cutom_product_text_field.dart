// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fudextask/features/addProduct/models/CutomProductTextFieldModle.dart';
import 'package:fudextask/features/addProduct/presentaion/cubit/add_product_cubit.dart';

class CutomProductTextField extends StatelessWidget {
  const CutomProductTextField({
    Key? key,
    required this.cutomProductTextFieldModel,
    required this.extFieldemum,
  }) : super(key: key);

  final CutomProductTextFieldModel cutomProductTextFieldModel;
  final TextFieldemum extFieldemum;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: cutomProductTextFieldModel.maxLine,
      controller: cutomProductTextFieldModel.productNameController,
      decoration: InputDecoration(
          isDense: true, // Added this
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
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
      onChanged: (value) {
        if (extFieldemum == TextFieldemum.name) {
          BlocProvider.of<AddProductCubit>(context).name = value;
        } else if (extFieldemum == TextFieldemum.price){
          BlocProvider.of<AddProductCubit>(context).price = value;
        }else {
          BlocProvider.of<AddProductCubit>(context).disc = value;
        }
        ;
      },
    );
  }
}

enum TextFieldemum { name, price,disc }
