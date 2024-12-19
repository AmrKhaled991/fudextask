import 'package:flutter/material.dart';
import 'package:fudextask/core/globalWidgets/DropListModel%20.dart';
import 'package:fudextask/core/globalWidgets/SelectDropList%20.dart';

class CustomDropButton extends StatefulWidget {
  CustomDropButton({super.key});

  @override
  State<CustomDropButton> createState() => _CustomDropButtonState();
}

class _CustomDropButtonState extends State<CustomDropButton> {
 final DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: "شنط"),
    OptionItem(id: "2", title: "عبايات"),
    OptionItem(id: "2", title: "طرح")
  ]);

  @override
  Widget build(BuildContext context) {
    return SelectDropList(
      dropListModel.listOptionItems.first,
      dropListModel,
      (optionItem) {
        setState(() {});
      },
    );
  }
}
