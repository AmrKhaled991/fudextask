import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fudextask/core/functions/showDialogError.dart';
import 'package:fudextask/core/globalUtils/App_assets.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';
import 'package:fudextask/features/addProduct/models/AddImageButtonModel.dart';
import 'package:fudextask/features/addProduct/view/widgets/small_button_add_image.dart';
import 'package:image_picker/image_picker.dart';

class ProductImageSection extends StatefulWidget {
  const ProductImageSection({super.key});

  @override
  _ProductImageSectionState createState() => _ProductImageSectionState();
}

class _ProductImageSectionState extends State<ProductImageSection> {
  File? _mainImage;
  final List<File> _imageList = [];
  final ImagePicker _picker = ImagePicker();

  // Pick an image from the gallery or camera
  Future<void> _pickImage(bool isMain) async {
    try {
      final XFile? pickedFile =
          await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        final file = File(pickedFile.path);
        // Check file size
        final int fileSizeInBytes = file.lengthSync();
        if (fileSizeInBytes > 2.5 * 1024 * 1024) {
          showError('The file size should not exceed 2.5 MB', context);
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
      showError('Failed to pick image', context);
    }
  }

  // Delete an image
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
    return Container(
      child: Stack(
        children: [
          SvgPicture.asset(
            Assets.imagesLargeStroks,
            fit: BoxFit.fill,
            width: 343,
            height: 280,
          ),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
              child: Column(
                children: [
                  // Main Image
                  _mainImage != null
                      ? SizedBox(
                          width: 150,
                          height: 121,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                Assets.imagesMediumStroks,
                              ),
                              Image.file(
                                _mainImage!,
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
                                  onPressed: () => _deleteImage(-1),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                top: 12,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: Color.fromARGB(255, 100, 129, 197),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(3.17),
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
                        )
                      : GestureDetector(
                          onTap: () => _pickImage(true),
                          child: AddImageButton(
                              addImageButtonModel: AddImageButtonModel(
                                  image: Assets.imagesMediumStroks,
                                  widht: 150,
                                  height: 121)),
                        ),
                  const SizedBox(
                    height: 16,
                  ),
                  // Image Grid
                  SizedBox(
                    height: 60,
                    child: ListView.separated(
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => SizedBox(
                        width: 8,
                      ),
                      itemCount:
                          _imageList.length + 1, // Add button as an item
                      itemBuilder: (context, index) {
                        if (index == _imageList.length) {
                          // Add Button
                          return GestureDetector(
                              onTap: () => _pickImage(false),
                              child: AddImageButton(
                                  addImageButtonModel: AddImageButtonModel(
                                      image: Assets.imagesSmallStroks,
                                      widht: 58,
                                      height: 50)));
                        } else {
                          // Image Thumbnail
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
                                borderRadius: BorderRadius.circular(
                                    10), // Same border radius
                                child: Image.file(
                                  _imageList[index],
                                  fit: BoxFit
                                      .cover, // Ensures the image covers the entire container
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
                                  onPressed: () => _deleteImage(index),
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  ),
      
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    '(لا يجب أن يتجاوز مساحة 2.5 MB)',
                    textAlign: TextAlign.center,
                    style: Styles.textNormalTajawal13()
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
