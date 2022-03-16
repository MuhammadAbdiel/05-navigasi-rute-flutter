import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage(
      {Key? key,
      required this.name,
      required this.quantity,
      required this.price})
      : super(key: key);

  static const routeName = '/item';

  final String name;
  final int quantity;
  final int price;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Item Page'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Card(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(child: Text(name)),
                  Expanded(
                    child: Text(
                      quantity.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      price.toString(),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
