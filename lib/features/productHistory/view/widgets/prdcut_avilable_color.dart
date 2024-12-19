import 'package:flutter/material.dart';
import 'package:fudextask/constent.dart';

class PrdcutAvilableColor extends StatelessWidget {
  const PrdcutAvilableColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          productSizesList.length,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Container(
                  width:14 ,height: 14,
                  decoration: BoxDecoration(
                    color: PRIMARY,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(5),
                ),
                
              )),
    );
  }
}
