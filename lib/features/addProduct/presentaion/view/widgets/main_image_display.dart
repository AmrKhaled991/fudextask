import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fudextask/core/globalUtils/App_assets.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';

class MainImageDisplay extends StatelessWidget {
  final File? mainImage;
  final VoidCallback onDelete;
  final VoidCallback onPickImage;

  const MainImageDisplay({
    Key? key,
    required this.mainImage,
    required this.onDelete,
    required this.onPickImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (mainImage != null) {
      return SizedBox(
        width: 150,
        height: 121,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(Assets.imagesMediumStroks),
            Image.file(
              mainImage!,
              height: 84,
              fit: BoxFit.scaleDown,
            ),
            Positioned(
              left: 4,
              top: 0,
              child: IconButton(
                icon: SvgPicture.asset(
                  Assets.imagesTrash,
                  width: 20,
                  height: 20,
                  fit: BoxFit.fill,
                ),
                onPressed: onDelete,
              ),
            ),
            Positioned(
              right: 8,
              top: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 100, 129, 197),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.17),
                  ),
                ),
                child: Text(
                  'الصورة الأساسية',
                  style: Styles.textNormalTajawal11(),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return GestureDetector(
          onTap: onPickImage,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(child: SvgPicture.asset(Assets.imagesMediumStroks)),
              Center(
                child: SvgPicture.asset(Assets.imagesAdd,width: 30,),
              ),
            ],
          ));
    }
  }
}
