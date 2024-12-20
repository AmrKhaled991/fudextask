// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:fudextask/core/utils/globalModles/DropListModel%20.dart';

class SelectDropListModel {
   final OptionItem itemSelected;
  final DropDownTheme dropDownTheme;
  final DropListModel dropListModel;
  final Function(OptionItem optionItem) onOptionSelected;
  SelectDropListModel({
    required this.itemSelected,
    required this.dropDownTheme,
    required this.dropListModel,
    required this.onOptionSelected,
  });
}
