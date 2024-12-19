import 'package:flutter/material.dart';
import 'package:fudextask/constent.dart';

class CustomSwitcher extends StatefulWidget {
  const CustomSwitcher({
    super.key,
  });

  @override
  State<CustomSwitcher> createState() => _CustomSwitcherState();
}

class _CustomSwitcherState extends State<CustomSwitcher> {
  bool active = true;

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
