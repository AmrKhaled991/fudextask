// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fudextask/core/globalUtils/App_assets.dart';

class CustomSelectedContainer extends StatelessWidget {
  final Widget widget;
  final VoidCallback voidCallbackAction;

  const CustomSelectedContainer({
    Key? key,
    required this.widget,
    required this.voidCallbackAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 6),
      decoration: ShapeDecoration(
        color: Color(0x2828A6FD),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget,
          SizedBox(
            width: 9,
          ),
          InkWell(
            onTap: voidCallbackAction,
            child: SvgPicture.asset(
              Assets.imagesTrash,
              width: 11,
              height: 11,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
    );
  }
}
