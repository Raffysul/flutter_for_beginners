import 'package:flutter/material.dart';
import 'package:flutter_for_beginners/products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager({super.key, this.startingProduct = 'Sweets Tester'}) {
    print('[ProductManager Widget] Constructor');
  }
  // const ProductManager({Key? key, required this.startingProduct})
  //     : super(key: key);

  @override
  State<ProductManager> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = ["Food Tester"];

  @override
  void initState() {
    print('[ProductManager State] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor),
              onPressed: () {
                setState(() {
                  _products.add('Advanced Food Tester');
                  //print(_products);
                });
              },
              child: const Text('Add Product'),
            ),
          ),
          Products(_products)
        ],
      ),
    );
  }
}
