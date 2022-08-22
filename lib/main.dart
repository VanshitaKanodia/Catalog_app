import 'package:commercial_app/pages/cart_page.dart';
import 'package:commercial_app/pages/home_page.dart';
import 'package:commercial_app/pages/login_page.dart';
import 'package:commercial_app/utils/routes.dart';
import 'package:commercial_app/widgets/themes.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.darkThemeData(context),
      darkTheme: MyTheme.darkThemeData(context),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
