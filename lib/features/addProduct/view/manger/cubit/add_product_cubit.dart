import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit() : super(AddProductInitial());

  String id = "";
  String name = "";
  String category = "القسم";
  String subcategory = "";
  List<String> images = [];
  String price = '';
  List<String> sizes=[];
  List<Color> colors=[];
  List<String> keywords=[];
  String? disc;
  List<String> addFeatures = [];

   void addFeaturesFunction(String feature) {
  if (!addFeatures.contains(feature)) {
    addFeatures.add(feature);
  }}
   void addkeywordsFunction(String feature) {
  if (!keywords.contains(feature)) {
    keywords.add(feature);
  }
   }

    void addSizesFunction(String feature) {
  if (!sizes.contains(feature)) {
    sizes.add(feature);
  }
   }
   void addColorFunction(Color feature) {
  if (!colors.contains(feature)) {
    colors.add(feature);
  }
   }

  void selectMainCategory(String mainCategory) {
    category = mainCategory;
    emit(AddProductchoiseDeparment());
  }

   void validation() {
// 

  }

  
   void validationListImage() {
// 
  }

}