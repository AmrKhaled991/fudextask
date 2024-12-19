// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/constent.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';

class CustomTextButton extends StatelessWidget {
  String text;
   CustomTextButton({
    Key? key,
    required this.text,
  }) : super(key: key);

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
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => Introductionscreen(),
            //   ),
            // );
          },
          child:  Text(
          text,
            style: Styles.textNormalWhite16(),
          )),
    );
  }
}

