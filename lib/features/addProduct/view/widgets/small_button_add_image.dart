// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fudextask/core/globalUtils/App_assets.dart';
import 'package:fudextask/features/addProduct/models/AddImageButtonModel.dart';

class AddImageButton extends StatelessWidget {
 final AddImageButtonModel addImageButtonModel;
  const AddImageButton({
    Key? key,
    required this.addImageButtonModel,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // Center elements in the Stack
      children: [
        SvgPicture.asset(
          addImageButtonModel.image,
          width: addImageButtonModel.widht,
          height: addImageButtonModel.height,
          fit: BoxFit.fill,
        ),
        SvgPicture.asset(
          Assets.imagesAdd,
          height: 20,
        ),
      ],
    );
  }
}
