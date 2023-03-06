import 'package:flutter/material.dart';
import 'package:flutter_for_beginners/product_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
            .copyWith(secondary: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('EasyList'),
        ),
        body: ProductManager(startingProduct: 'Food Tester',),
      ),
    );
  }
}
