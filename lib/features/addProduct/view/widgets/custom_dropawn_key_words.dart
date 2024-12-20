// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fudextask/core/globalModles/DropListModel%20.dart';
import 'package:fudextask/core/globalModles/SelectDropListModel.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';
import 'package:fudextask/core/globalWidgets/SelectDropList%20.dart';
import 'package:fudextask/features/addProduct/view/manger/cubit/add_product_cubit.dart';
import 'package:fudextask/features/addProduct/view/widgets/custom_selected_container.dart';

class CustomDropawnKeyWords extends StatefulWidget {
  const CustomDropawnKeyWords({super.key});

  @override
  State<CustomDropawnKeyWords> createState() => _CustomDropawnKeyWordsState();
}

class _CustomDropawnKeyWordsState extends State<CustomDropawnKeyWords> {
  final DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: ""),
    OptionItem(id: "3", title: "حقيبة"),
    OptionItem(id: "4", title: "شنطة"),
    OptionItem(id: "5", title: "هاند ميد"),
    OptionItem(id: "6", title: "خوص"),
    OptionItem(id: "7", title: "حقيبة"),
    OptionItem(id: "8", title: "هاند ميد")
  ]);

  @override
  Widget build(BuildContext context) {
    final block = BlocProvider.of<AddProductCubit>(context);
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
                      block.addkeywordsFunction(optionItem.title);
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
        SizedBox(
          height: 16,
        ),
        Wrap(
            spacing: 7,
            runSpacing: 12,
            children: List.generate(
                block.keywords.length,
                (index) => CustomSelectedContainer(
                    voidCallbackAction: () {
                      block.keywords.removeWhere(
                          (element) => element == block.keywords[index]);

                      setState(() {});
                    },
                    widget: Text(
                      block.keywords[index],
                      style: Styles.textNormalTajawal16(),
                    ))))
      ],
    );
  }
}
