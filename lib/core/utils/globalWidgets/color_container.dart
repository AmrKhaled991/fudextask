// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:fudextask/core/utils/globalModles/ColorContainerModle.dart';

class ColorContainer extends StatelessWidget {
 final ColorContainerModle colorContainerModle;
  const ColorContainer({
    Key? key,
    required this.colorContainerModle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:colorContainerModle.width,height: colorContainerModle.hieght,
      decoration: BoxDecoration(
        color: colorContainerModle.color,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(5),
    );
  }
}
