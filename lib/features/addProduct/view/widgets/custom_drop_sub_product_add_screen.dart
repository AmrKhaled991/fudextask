// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fudextask/core/globalModles/DropListModel%20.dart';
import 'package:fudextask/core/globalModles/SelectDropListModel.dart';
import 'package:fudextask/core/globalWidgets/SelectDropList%20.dart';
import 'package:fudextask/features/addProduct/view/manger/cubit/add_product_cubit.dart';
class CustomDropSubProductAddScreen extends StatefulWidget {
  const CustomDropSubProductAddScreen({
    super.key,
  });

  @override
  State<CustomDropSubProductAddScreen> createState() => _CustomDropSubProductAddScreenState();
}

class _CustomDropSubProductAddScreenState extends State<CustomDropSubProductAddScreen> {
  DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: "القسم الفرعي"),
    OptionItem(id: "1", title: "شنط صغيرة"),
    OptionItem(id: "2", title: "عبايات مفتوحة"),
    OptionItem(id: "2", title: "طرح حرير")
  ]);

  @override
  Widget build(BuildContext context) {
    final addProductCubit = BlocProvider.of<AddProductCubit>(context);

    return BlocBuilder<AddProductCubit, AddProductState>(
      
      builder: (context, state) {
        print(addProductCubit.category);
        print(state);

        if(state is AddProductchoiseDeparment){
          return SelectDropList(
            null,
            SelectDropListModel(
              onOptionSelected: (optionItem) {
                addProductCubit.subcategory = optionItem.title;
                setState(() {});
              },
              dropDownTheme: DropDownTheme.EditProudctScreen,
              dropListModel: dropListModel,
              itemSelected: dropListModel.listOptionItems.first,
            ),
          );
        }
      
        return AbsorbPointer(
          absorbing: addProductCubit.category == "القسم", // تعطيل إذا لم يتم اختيار قسم
          child: SelectDropList(
            null,
            SelectDropListModel(
              onOptionSelected: (optionItem) {
                addProductCubit.subcategory = optionItem.title;
                setState(() {});
              },
              dropDownTheme: DropDownTheme.EditProudctScreen,
              dropListModel: dropListModel,
              itemSelected: dropListModel.listOptionItems.first,
            ),
          ),
        );
      },
    );
  }
}
