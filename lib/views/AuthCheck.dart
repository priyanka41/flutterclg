import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({Key key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  final _storage = FlutterSecureStorage();

  Future<Null> isLoggedIn() async {
    final accessToken = await _storage.read(key: 'access_token');
    if (accessToken != null) {
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  void initState() {
    super.initState();
    isLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Please wait...'),
      ),
    );
  }
}
