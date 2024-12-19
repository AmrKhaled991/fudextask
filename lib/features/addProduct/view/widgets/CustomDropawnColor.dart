// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/core/globalModles/ColorContainerModle.dart';
import 'package:fudextask/core/globalModles/DropListModel%20.dart';
import 'package:fudextask/core/globalModles/SelectDropListModel.dart';
import 'package:fudextask/core/globalWidgets/SelectDropList%20.dart';
import 'package:fudextask/core/globalWidgets/color_container.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_selected_container.dart';

class CustomDropawnColor extends StatefulWidget {
  const CustomDropawnColor({super.key});

  @override
  State<CustomDropawnColor> createState() =>
      _CustomDropawnColorState();
}

class _CustomDropawnColorState extends State<CustomDropawnColor> {
 final DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: ""),
    OptionItem(id: "3", title: "احمر"),
    OptionItem(id: "2", title: "اسفر"),
    OptionItem(id: "2", title: "برتقالي")
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
                  
            ),Expanded(child: SizedBox())
          ],
        ),
       const SizedBox(
          height: 16,
        ),
        Wrap(
          spacing: 7,
          runSpacing: 12,
          children: List.generate(4,(index)=>
            CustomSelectedContainer(
                widget: ColorContainer(
                    colorContainerModle: ColorContainerModle(
                        color: Colors.yellowAccent, width: 31, hieght: 26)))
          )
        )
      ],
    );
  }
}
