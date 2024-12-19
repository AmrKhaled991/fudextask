// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fudextask/constent.dart';
import 'package:fudextask/core/globalModles/ColorContainerModle.dart';
import 'package:fudextask/core/globalWidgets/color_container.dart';

class PrdcutAvilableColor extends StatelessWidget {
  const PrdcutAvilableColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          productSizesList.length,
          (index) => ColorContainer(
                colorContainerModle:
                    ColorContainerModle(color: PRIMARY, width: 14, hieght: 14),
              )),
    );
  }
}
