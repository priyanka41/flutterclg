import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sanctum_auth/providers/AuthProvider.dart';
import 'package:sanctum_auth/routes.dart';
import 'package:sanctum_auth/views/AuthCheck.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (BuildContext context) => AuthProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Sanctum Auth',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AuthCheck(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
