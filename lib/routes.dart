import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanctum_auth/views/Home.dart';
import 'package:sanctum_auth/views/Login.dart';
import 'package:sanctum_auth/views/Register.dart';
import 'package:sanctum_auth/views/drive.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case '/login':
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginPage());
        break;
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPage());
        break;

        case '/drive':
        return MaterialPageRoute(builder: (_) => DrivePage());
        break;
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
