import 'package:flutter/material.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';
import 'package:fudextask/constent.dart';

class PrdcutAvilableSize extends StatelessWidget {
  const PrdcutAvilableSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          productSizesList.length,
          (index) => Padding(
            padding: const EdgeInsets.all( 5.0),
            child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                    width: 1.20,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: PRIMARY,
                  )),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    productSizesList[index],
                    style: Styles.textMediumTajawal10(),
                  ),
                ),
          )),
    );
  }
}
