import 'package:bank_app/screens/login_page.dart';
import 'package:bank_app/screens/page_view.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CustomPageView(),
    );
  }
}






