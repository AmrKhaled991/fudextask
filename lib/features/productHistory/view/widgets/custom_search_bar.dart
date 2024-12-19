// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fudextask/core/globalUtils/App_assets.dart';
import 'package:fudextask/core/globalUtils/Styles.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.searchController, 
      decoration: InputDecoration(
        isDense: true, 
        contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 12), 
        hintText: 'بحث',
        hintStyle: Styles.textNormal14(),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 12,left: 4),
          child: SvgPicture.asset(
            Assets.imagesSearch,
            fit: BoxFit.scaleDown,
          ),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 4, 
          minHeight: 4,
        ),
        suffixIcon: widget.searchController.text.isNotEmpty
            ? IconButton(
                icon: SvgPicture.asset(
                  Assets.imagesClose,
                  fit: BoxFit.scaleDown,
                ),
                onPressed: () {
                  widget.searchController.clear(); 
                  setState(() {}); 
                },
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFDBDBDB)),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFDBDBDB)),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFDBDBDB)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onChanged: (text) {
        setState(() {}); 
      },
    );
  }
}