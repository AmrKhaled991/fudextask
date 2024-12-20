import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fudextask/core/globalUtils/App_assets.dart';
import 'package:fudextask/features/addProduct/models/AddImageButtonModel.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/small_button_add_image.dart';

class ImageListDisplay extends StatelessWidget {
  final List<File> imageList;
  final Function(int) onDeleteImage;
  final VoidCallback onAddImage;

  const ImageListDisplay({
    Key? key,
    required this.imageList,
    required this.onDeleteImage,
    required this.onAddImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: imageList.length + 1,
        itemBuilder: (context, index) {
          if (index == imageList.length) {
            return GestureDetector(
              onTap: onAddImage,
              child: AddImageButton(
                addImageButtonModel: AddImageButtonModel(
                  image: Assets.imagesSmallStroks,
                  widht: 58,
                  height: 50,
                ),
              ),
            );
          } else {
            return Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  Assets.imagesSmallStroks,
                  width: 58,
                  height: 50,
                  fit: BoxFit.fill,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.file(
                    imageList[index],
                    fit: BoxFit.cover,
                    width: 58,
                    height: 50,
                  ),
                ),
                Positioned(
                  left: 0,
                  child: IconButton(
                    icon: SvgPicture.asset(
                      Assets.imagesTrash,
                      width: 15,
                      height: 15,
                      fit: BoxFit.fill,
                    ),
                    onPressed: () => onDeleteImage(index),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
