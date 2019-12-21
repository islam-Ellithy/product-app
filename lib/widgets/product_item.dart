import 'package:flutter/material.dart';
import 'package:product_app/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          child: Image.asset('assets/images/money.png')//Text(product.productName.substring(0,1)),
          

        ),
        title: Text(product.productName,style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text(product.productPrice),
        trailing: Text(product.productQuantity.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
