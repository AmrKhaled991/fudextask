// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/constent.dart';
import 'package:fudextask/core/utils/globalUtils/Styles.dart';

class CustomProductStatus extends StatefulWidget {
  const CustomProductStatus({Key? key}) : super(key: key);

  @override
  State<CustomProductStatus> createState() => _CustomProductStatusState();
}
class _CustomProductStatusState extends State<CustomProductStatus> {
  final   List<String>option=["مستخدم","عادي"];
   
  late String current;
      @override
  void initState() {
    // TODO: implement initState
    super.initState();
    current=option[0];

  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio(
          activeColor: PRIMARY,
          value: option[0],
          groupValue: current,
          onChanged: (value) {
            setState(() {
              current=value.toString();
            });
          },
        ),
        Text(
          option[0],
          style: Styles.textNormalTajawal16(),
        ),
        const SizedBox(width: 12),
      ],
    ),
     Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio(
          activeColor: PRIMARY,
          value: option[1],
          groupValue: current,
          onChanged: (value) {
            setState(() {
              current=value.toString();
            });
          },
        ),
        Text(
          option[1],
          style: Styles.textNormalTajawal16(),
        ),
        const SizedBox(width: 12),
      ],
    )
      ],
    );
  }


}