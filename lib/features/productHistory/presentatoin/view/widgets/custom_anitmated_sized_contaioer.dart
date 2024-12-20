// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/constent.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';

class CustomSelectedSizedContaioer extends StatelessWidget {
  final String text;
  final bool condion;
  CustomSelectedSizedContaioer({
    Key? key,
    required this.text,
    required this.condion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          child:condion?SelectedContainerSize(size: text,):UnSelectedContainerSize(size: text,) ,
    );
  }
}




class SelectedContainerSize extends StatelessWidget {
  
  const SelectedContainerSize({
    super.key,
    required this.size,
  });

  final String size;
 
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
          padding: EdgeInsets.all(5),
          child: Text(
            size,
            style: Styles.textMediumTajawalBlack10(),
          ),
        );
  }
}

class UnSelectedContainerSize extends StatelessWidget {
  
  const UnSelectedContainerSize({
    super.key,
    required this.size,
  });

  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
              border: Border.all(
            width:1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color:  Color(0xFFA8A8A8),
          )),
          padding: EdgeInsets.all(5),
          child: Text(
            size,
            style: Styles.textMediumTajawal10(),
          ),
        );
  }
}
