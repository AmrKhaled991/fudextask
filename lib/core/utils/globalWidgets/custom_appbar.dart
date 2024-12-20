// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fudextask/core/utils/globalModles/CustomTextButtonModels.dart';
import 'package:fudextask/core/utils/globalUtils/App_assets.dart';
import 'package:fudextask/core/utils/globalUtils/Styles.dart';

class CustomAppbar extends StatelessWidget {
  final CustomAppbarModel customAppbarModel;
  const CustomAppbar({
    super.key,
    required this.customAppbarModel,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
           color: Color(0x26717171),
            blurRadius: 10,
            offset: Offset(-2, 2),
            spreadRadius: -1,
          )
      ]),
      padding: EdgeInsets.only(
          left: 12,
          right: 12,
          top: MediaQuery.of(context).padding.top), 
      child: SizedBox(
          height: kToolbarHeight,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: customAppbarModel.callback,
              child: SvgPicture.asset(Assets.imagesArrowBcack,fit: BoxFit.scaleDown,),
            ),
            Text(customAppbarModel.text,
                textAlign: TextAlign.center, style: Styles.textNormal18()),
            const SizedBox(
              width: 45,
            )
          ])),
    );
  }
}
