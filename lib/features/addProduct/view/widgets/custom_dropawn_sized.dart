// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/core/globalModles/DropListModel%20.dart';
import 'package:fudextask/core/globalModles/SelectDropListModel.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';
import 'package:fudextask/core/globalWidgets/SelectDropList%20.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_selected_container.dart';

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
                dropListModel.listOptionItems.length,
                (index) => CustomSelectedContainer(
                        widget: Text(
                      dropListModel.listOptionItems[index].title,
                      style: Styles.textNormalTajawal16(),
                    ))))
      ],
    );
  }
}
