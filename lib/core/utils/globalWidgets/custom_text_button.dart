
import 'package:flutter/material.dart';
import 'package:fudextask/constent.dart';
import 'package:fudextask/core/utils/globalUtils/Styles.dart';
import 'package:fudextask/features/addProduct/models/CustomTextButtonModels.dart';

class CustomTextButton extends StatelessWidget {
  final CustomTextButtonModels customTextButtonModels;
  const CustomTextButton({
    super.key,
    required this.customTextButtonModels,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: PRIMARY,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: customTextButtonModels.callback,
          child: Text(
            customTextButtonModels.text,
            style: Styles.textNormalWhite16(),
          )),
    );
  }
}
