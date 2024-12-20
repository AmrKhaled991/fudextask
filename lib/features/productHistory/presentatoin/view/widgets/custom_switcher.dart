// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fudextask/constent.dart';
import 'package:fudextask/features/productHistory/presentatoin/manger/cubit/product_cubit.dart';

class CustomSwitcher extends StatefulWidget {
   final bool isActive;
   final String id;
  const CustomSwitcher({
    Key? key,
    required this.isActive,
    required this.id,
  }) : super(key: key);


  @override
  State<CustomSwitcher> createState() => _CustomSwitcherState();
}

class _CustomSwitcherState extends State<CustomSwitcher> {
  late bool active ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    active=widget.isActive;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Theme(
        data: ThemeData(useMaterial3: false),
        child: Switch(
          
          value: active,
          onChanged: (newValue) {
            active = !active;
            BlocProvider.of<ProductCubit>(context).activateProduct(widget.id);
            setState(() {});
          },
          activeColor: Colors.white,
          inactiveThumbColor: Colors.white,
          activeTrackColor: PRIMARY,
          inactiveTrackColor: Colors.grey,
        ),
      ),
    );
  }
}
