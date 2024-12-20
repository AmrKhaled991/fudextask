// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fudextask/features/productHistory/presentatoin/view/widgets/custom_selected_color.dart';

class PrdcutAvilableColor extends StatefulWidget {
  final List<Color> colors;
  const PrdcutAvilableColor({
    Key? key,
    required this.colors,
  }) : super(key: key);

  @override
  State<PrdcutAvilableColor> createState() => _PrdcutAvilableColorState();
}

class _PrdcutAvilableColorState extends State<PrdcutAvilableColor> {
    int selecteditem = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
          widget.colors.length,
          (index) => 
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: GestureDetector(
                onTap:  () {
                if (selecteditem == index) return;
                selecteditem = index;
                setState(() {});
              },
              child: CustomSelectedColorContaioer(color:widget.colors[index] ,condion:
                 (selecteditem == index) 
               ,)
                   ),
          ),
    ));
  }
}
