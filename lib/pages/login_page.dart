import 'package:flutter/material.dart';
import 'package:product_app/pages/home_page.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(
                'Login',
                style: TextStyle(color: Colors.deepOrange),
              ),
              onPressed: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
            )
          ],
        ),
      ),
    );
  }
}
