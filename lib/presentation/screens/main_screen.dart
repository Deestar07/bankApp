

import 'package:bank_app/presentation/values/colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass().primaryColor,
      body: const Center(
        child: Text('Main Screen'),
      ),
    );
  }
}
