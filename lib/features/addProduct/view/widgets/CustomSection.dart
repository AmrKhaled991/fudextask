// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';

import 'package:fudextask/features/addProduct/models/CustomSectionModel.dart';

class CustomSection extends StatelessWidget {
  final CustomSectionModel customSectionModel;
  const CustomSection({
    super.key,
    required this.customSectionModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column( crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(customSectionModel.text,
            textAlign: TextAlign.right, style: Styles.textNormalTajawal16()),
        const SizedBox(
          height: 12,
        )
        ,customSectionModel.widget,
          const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
