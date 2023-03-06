import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print('[Products Widget] Constructor');
  }
  // const MyProducts({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return Column(
      children: products
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/food.png'),
                  Text(element)
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
