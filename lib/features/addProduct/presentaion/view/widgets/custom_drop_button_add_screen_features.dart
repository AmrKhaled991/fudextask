// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fudextask/core/globalModles/DropListModel%20.dart';
import 'package:fudextask/core/globalModles/SelectDropListModel.dart';
import 'package:fudextask/core/globalWidgets/SelectDropList%20.dart';
import 'package:fudextask/features/addProduct/presentaion/cubit/add_product_cubit.dart';

class CustomDropButtonAddScreenFeatures extends StatefulWidget {
  final VoidCallback voidCallback;
  const CustomDropButtonAddScreenFeatures({
    Key? key,
    required this.voidCallback,
  }) : super(key: key);

  @override
  State<CustomDropButtonAddScreenFeatures> createState() => _CustomDropButtonAddScreenFeaturesState();
}

class _CustomDropButtonAddScreenFeaturesState extends State<CustomDropButtonAddScreenFeatures> {
  DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: ""),
    OptionItem(id: "2", title: "اللون"),
    OptionItem(id: "3", title: "المقاس"),
    OptionItem(id: "4", title: "الحالة"),
    OptionItem(id: "5", title: "الكلمات")
  ]);

  @override
  Widget build(BuildContext context) {
    return SelectDropList(
        null,
        SelectDropListModel(
          onOptionSelected: (optionItem) {
            BlocProvider.of<AddProductCubit>(context).addFeatures.add(optionItem.title);
            setState(() {
            });
            widget.voidCallback();
          },
          dropDownTheme: DropDownTheme.EditProudctScreen,
          dropListModel: dropListModel,
          itemSelected: dropListModel.listOptionItems.first,
        ));
  }
}
