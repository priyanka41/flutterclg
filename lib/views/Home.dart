import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sanctum_auth/providers/AuthProvider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Home'),
              RaisedButton(
                onPressed: () async {
                  await auth.logout();
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                child: Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
