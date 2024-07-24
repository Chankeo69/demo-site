import 'package:flutter/material.dart';
import 'package:sneaker_shop/Pages/CartPage.dart';
import 'package:sneaker_shop/Pages/ChatPage.dart';
import 'package:sneaker_shop/Pages/HomeChat.dart';
import 'package:sneaker_shop/Pages/HomePage.dart';
import 'package:sneaker_shop/Pages/IntroPage.dart';
import 'package:sneaker_shop/Pages/ItemPage.dart';
import 'package:sneaker_shop/Pages/SignInPage.dart';
import 'package:sneaker_shop/Pages/SignUpPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Crazy Sneaker Shop",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF5F5F3)),
      routes: {
        "/": (context) => IntroPage(),
        "homePage": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "signinPage": (context) => SignInPage(),
        "signupPage": (context) => SignUpPage(),
        "homechat": (context) => HomeChat(),
        "chatpage": (context) => ChatPage(),
      },
    );
  }
}
