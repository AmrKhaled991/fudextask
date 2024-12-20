// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fudextask/features/productHistory/presentatoin/view/widgets/custom_anitmated_sized_contaioer.dart';

class PrdcutAvilableSize extends StatefulWidget {
  final List<String> sizes;
  const PrdcutAvilableSize({
    Key? key,
    required this.sizes,
  }) : super(key: key);

  @override
  State<PrdcutAvilableSize> createState() => _PrdcutAvilableSizeState();
}

class _PrdcutAvilableSizeState extends State<PrdcutAvilableSize> {
  int selecteditem = 0;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          widget.sizes.length,
          (index) => Padding(
            padding: const EdgeInsets.all( 5.0),
            child: GestureDetector(
              onTap:  () {
              if (selecteditem == index) return;
              selecteditem = index;
              setState(() {});
            },
              child: CustomSelectedSizedContaioer(text: widget.sizes[index],condion:(selecteditem == index) ,)),
          )),
    );
  }
}
