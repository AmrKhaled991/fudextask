import 'package:flutter/material.dart';
import 'package:fudextask/features/addProduct/view/EditProudctScreen.dart';
import 'package:fudextask/features/productHistory/view/ProductHistoryScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Directionality(
        textDirection: TextDirection.rtl,
        child:
         const EditProudctScreen()),
    );
  }
}
