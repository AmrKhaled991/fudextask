import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fudextask/features/productHistory/presentatoin/manger/cubit/product_cubit.dart';
import 'package:fudextask/features/productHistory/presentatoin/view/ProductHistoryScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.white, // Green background
  statusBarIconBrightness: Brightness.dark, // Light icons (for dark background)
));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Directionality(
        textDirection: TextDirection.rtl,
        child:
         BlocProvider(
          create: (context) => ProductCubit(),
         child: const ProductHistoryScreen())),
    );
  }
}
