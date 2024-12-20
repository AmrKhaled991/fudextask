import 'package:flutter/material.dart';
import 'package:fudextask/constent.dart';
import 'package:fudextask/core/utils/globalModles/ColorContainerModle.dart';
import 'package:fudextask/core/utils/globalWidgets/color_container.dart';

class CustomSelectedColorContaioer extends StatelessWidget {
  final Color color;
  final bool condion;
 const CustomSelectedColorContaioer({
    Key? key,
    required this.color,
    required this.condion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: condion
          ? SelectedContainerColor(
              color: color,
            )
          : ColorContainer(
                colorContainerModle:
                    ColorContainerModle(color: color, width: 14, hieght: 14),
              )
    );
  }
}

class SelectedContainerColor extends StatelessWidget {
  const SelectedContainerColor({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1.20,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: PRIMARY,
          )),
      child: ColorContainer(
                colorContainerModle:
                    ColorContainerModle(color: color, width: 14, hieght: 14),
              )
    );
  }
}

