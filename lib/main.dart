import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:info_first/bindings/product_info_bindings.dart';
import 'package:info_first/bindings/product_screen_binding.dart';

import '../screens/product_info.dart';
import '../screens/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/productscreen',
      getPages: [
        GetPage(
          name: '/productscreen',
          page: () => ProductScreen(),
          binding: ProductScreenBinding(),
        ),
        GetPage(
          name: '/productInfo',
          page: () => ProductInfo(image: '', index: 0),
          binding: ProductInfoBinding(),
        ),
      ],
    );
  }
}
