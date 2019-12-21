import 'package:flutter/material.dart';
import 'package:product_app/models/product.dart';

class DetailsPage extends StatelessWidget {
  final Product productInfo;

  DetailsPage(this.productInfo);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){

        Navigator.pop(context,false);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text('Product Details'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  productInfo.productName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              Image.asset(productInfo.ImageUri),
              Row(
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '\$${productInfo.productPrice}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.bottomRight,
                        child: Text(
                            productInfo.productQuantity.toString() + ' Items')),
                  ),

                ],
              ),
              FlatButton(
                child: Text(
                  'Back',
                  style: TextStyle(color: Colors.deepOrange),
                ),
                onPressed: () => Navigator.pop(context),
              ),
              FlatButton(
                child: Text(
                  'Delete',
                  style: TextStyle(color: Colors.deepOrange),
                ),
                onPressed: () => Navigator.pop(context,true),
              )

            ],
          )),
    );
  }
}
