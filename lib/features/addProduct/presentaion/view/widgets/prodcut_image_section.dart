import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/image_list_display.dart';
import 'package:fudextask/features/addProduct/presentaion/view/widgets/main_image_display.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fudextask/core/utils/globalUtils/App_assets.dart';
import 'package:fudextask/core/utils/globalUtils/Styles.dart';

class ProductImageSection extends StatefulWidget {
  const ProductImageSection({super.key});

  @override
  _ProductImageSectionState createState() => _ProductImageSectionState();
}

class _ProductImageSectionState extends State<ProductImageSection> {
  File? _mainImage;
  final List<File> _imageList = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(bool isMain) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        final file = File(pickedFile.path);
        final int fileSizeInBytes = file.lengthSync();
        if (fileSizeInBytes > 2.5 * 1024 * 1024) {
          // Show error dialog here (implement as a separate function if necessary).
          return;
        }
        setState(() {
          if (isMain) {
            _mainImage = file;
          } else {
            _imageList.add(file);
          }
        });
      }
    } catch (e) {
      // Show error dialog here (implement as a separate function if necessary).
    }
  }

  void _deleteImage(int index) {
    setState(() {
      if (index == -1) {
        _mainImage = null;
      } else {
        _imageList.removeAt(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SvgPicture.asset(
            Assets.imagesLargeStroks,
            fit: BoxFit.fill,
            width: 343,
            height: 280,
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
            child: Column(
              children: [
                MainImageDisplay(
                  mainImage: _mainImage,
                  onDelete: () => _deleteImage(-1),
                  onPickImage: () => _pickImage(true),
                ),
                const SizedBox(height: 16),
                ImageListDisplay(
                  imageList: _imageList,
                  onDeleteImage: _deleteImage,
                  onAddImage: () => _pickImage(false),
                ),
                const SizedBox(height: 16),
                Text(
                  '(لا يجب أن يتجاوز مساحة 2.5 MB)',
                  textAlign: TextAlign.center,
                  style: Styles.textNormalTajawal13(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
