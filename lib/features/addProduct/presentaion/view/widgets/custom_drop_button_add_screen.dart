// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fudextask/core/utils/globalModles/DropListModel%20.dart';
import 'package:fudextask/core/utils/globalModles/SelectDropListModel.dart';
import 'package:fudextask/core/utils/globalWidgets/SelectDropList%20.dart';
import 'package:fudextask/features/addProduct/presentaion/cubit/add_product_cubit.dart';
class CustomDropMainProductAddScreen extends StatefulWidget {
  const CustomDropMainProductAddScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropMainProductAddScreen> createState() => _CustomDropMainProductAddScreenState();
}

class _CustomDropMainProductAddScreenState extends State<CustomDropMainProductAddScreen> {
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
          BlocProvider.of<AddProductCubit>(context).selectMainCategory(optionItem.title);
          setState(() {});
        },
        dropDownTheme: DropDownTheme.EditProudctScreen,
        dropListModel: dropListModel,
        itemSelected: dropListModel.listOptionItems.first,
      ),
    );
  }
}
