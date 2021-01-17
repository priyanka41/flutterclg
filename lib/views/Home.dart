import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Home'),
              RaisedButton(
                onPressed: null,
                child: Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
