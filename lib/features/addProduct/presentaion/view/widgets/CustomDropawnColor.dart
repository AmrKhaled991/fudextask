// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fudextask/core/globalModles/ColorContainerModle.dart';
import 'package:fudextask/core/globalModles/DropListModel%20.dart';
import 'package:fudextask/core/globalModles/SelectDropListModel.dart';
import 'package:fudextask/core/globalUtils/colors.dart';
import 'package:fudextask/core/globalWidgets/SelectDropList%20.dart';
import 'package:fudextask/core/globalWidgets/color_container.dart';
import 'package:fudextask/features/addProduct/presentaion/cubit/add_product_cubit.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/custom_selected_container.dart';

class CustomDropawnColor extends StatefulWidget {
  const CustomDropawnColor({super.key});

  @override
  State<CustomDropawnColor> createState() => _CustomDropawnColorState();
}

class _CustomDropawnColorState extends State<CustomDropawnColor> {
  final DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: ""),
    OptionItem(id: "3", title: "أحمر"),
    OptionItem(id: "4", title: "أصفر"),
    OptionItem(id: "5", title: "أخضر"),
    OptionItem(id: "6", title: "أزرق"),
    OptionItem(id: "7", title: "برتقالي"),
    OptionItem(id: "8", title: "أسود"),
    OptionItem(id: "9", title: "أبيض"),
    OptionItem(id: "10", title: "بيج"),
  ]);

  @override
  Widget build(BuildContext context) {
     final bloc= BlocProvider.of<AddProductCubit>(context);
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
                      bloc.addColorFunction(ColorManager.getColor(optionItem.title)??Colors.amber);
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
                bloc.colors.length,
                (index) => CustomSelectedContainer(voidCallbackAction: (){
                  bloc.colors.removeWhere((element) => element==bloc.colors[index]);
                  setState(() {
                    
                  });
                },
                    widget: ColorContainer(
                        colorContainerModle: ColorContainerModle(
                            color: bloc.colors[index],
                            width: 31,
                            hieght: 26)))))
      ],
    );
  }
}
