import 'package:flutter/material.dart';
import 'package:product_app/models/product.dart';

import '../products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> productList = [
    Product('Chicken', '99.99', 10,'assets/images/money.png'),
  ];

  void addProduct() {
    setState(() {
      productList.add(Product('Fish', '99.99', 10,'assets/images/money.png'));
    });
  }

  void _deleteProduct(int index){
    setState(() {
      productList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('Manage Products',style: TextStyle(fontWeight: FontWeight.bold),),
                onTap: (){},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(
          children: <Widget>[
            Center(
                child: RaisedButton(
              color: Colors.orange,
              child: Text(
                'Add Product',
              ),
              onPressed: addProduct,
            )),
            Expanded(child: Products(productList,_deleteProduct)),
          ],
        ));
  }
}
