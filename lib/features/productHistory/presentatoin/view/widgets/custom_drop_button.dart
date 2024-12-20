// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fudextask/core/globalModles/DropListModel%20.dart';
import 'package:fudextask/core/globalModles/SelectDropListModel.dart';
import 'package:fudextask/core/globalWidgets/SelectDropList%20.dart';
import 'package:fudextask/features/productHistory/presentatoin/manger/cubit/product_cubit.dart';

class CustomDropButton extends StatefulWidget {
  final DropDownTheme downTheme;
  const CustomDropButton({
    super.key,
    required this.downTheme,
  });

  @override
  State<CustomDropButton> createState() => _CustomDropButtonState();
}

class _CustomDropButtonState extends State<CustomDropButton> {
  DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: "القسم"),
    OptionItem(id: "1", title: "شنط"),
    OptionItem(id: "2", title: "عبايات"),
    OptionItem(id: "2", title: "طرح")
  ]);

  @override
  Widget build(BuildContext context) {
    return SelectDropList(
        null,
        SelectDropListModel(
          onOptionSelected: (optionItem) {
            BlocProvider.of<ProductCubit>(context).choiseDepartment(optionItem.title);
            setState(() {
              
            });
          },
          dropDownTheme: widget.downTheme,
          dropListModel: dropListModel,
          itemSelected: dropListModel.listOptionItems.first,
        ));
  }
}
