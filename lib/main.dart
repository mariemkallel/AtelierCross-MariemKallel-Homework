import 'package:flutter/material.dart';
import 'package:myapp/cart.dart';
import 'package:myapp/details_screen.dart';
import 'package:myapp/home_screen.dart';
import 'package:myapp/new_home.dart';
import 'package:myapp/profile_settings.dart';
import 'package:myapp/reset_password.dart';
import 'package:myapp/signin.dart';
import 'package:myapp/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Atelier Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Cart());
  }
}
