// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fudextask/core/utils/globalModles/DropListModel%20.dart';
import 'package:fudextask/core/utils/globalModles/SelectDropListModel.dart';
import 'package:fudextask/core/utils/globalUtils/Styles.dart';
import 'package:fudextask/core/utils/globalWidgets/SelectDropList%20.dart';
import 'package:fudextask/features/addProduct/presentaion/cubit/add_product_cubit.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/custom_selected_container.dart';

class CustomDropawnSizes extends StatefulWidget {
  const CustomDropawnSizes({super.key});

  @override
  State<CustomDropawnSizes> createState() => _CustomDropawnSizesState();
}

class _CustomDropawnSizesState extends State<CustomDropawnSizes> {
  final DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: ""),
    OptionItem(id: "3", title: "M"),
    OptionItem(id: "2", title: "L"),
    OptionItem(id: "2", title: "XL"),
    OptionItem(id: "2", title: "XXL")
  ]);

  @override
  Widget build(BuildContext context) {
    final addBlock = BlocProvider.of<AddProductCubit>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: SelectDropList(
                  null,
                  SelectDropListModel(
                    onOptionSelected: (optionItem) {
                      addBlock.addSizesFunction(optionItem.title);
                      setState(() {});
                    },
                    dropDownTheme: DropDownTheme.EditProudctScreen,
                    dropListModel: dropListModel,
                    itemSelected: dropListModel.listOptionItems.first,
                  )),
            ),
            Expanded(child: SizedBox())
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Wrap(
            spacing: 7,
            runSpacing: 12,
            children: List.generate(
                addBlock.sizes.length,
                (index) => CustomSelectedContainer(
                    voidCallbackAction: () {
                       addBlock.sizes.removeWhere(
                          (element) => element == addBlock.sizes[index]);
                      setState(() {});
                    },
                    widget: Text(
                      addBlock.sizes[index],
                      style: Styles.textNormalTajawal16(),
                    ))))
      ],
    );
  }
}
