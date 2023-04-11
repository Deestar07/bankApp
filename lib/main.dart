import 'package:bank_app/app.dart';
import 'package:bank_app/data/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/screens/onboarding/onboarding_view.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: App.notifierProviders,
        child:  const MaterialApp(
          debugShowCheckedModeBanner: false,
          home:OnboardingView(),
        ));

  }
}






