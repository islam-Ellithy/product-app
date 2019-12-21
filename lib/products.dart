import 'package:flutter/material.dart';
import 'package:product_app/pages/details_page.dart';
import 'package:product_app/widgets/product_item.dart';

import 'models/product.dart';

class Products extends StatelessWidget {
  final List<Product> productList;
  final Function deleteProduct;

  Products(this.productList, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/money.png'),
                Text('Money'),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text('Details'),
                      onPressed: () => Navigator.push<bool>(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(productList[index])))
                          .then((bool value) {
                        if (value == true) {
                          deleteProduct(index);
                        }
                      }),
                    )
                  ],
                )
              ],
            ),
          );
        },
        itemCount: productList.length);
  }
}
