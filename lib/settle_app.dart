import 'package:flutter/material.dart';
import 'package:settle/module/onboarding/views/onboarding.dart';
import 'package:settle/style/constants/app_constants.dart';

class SettleApp extends StatelessWidget {
  const SettleApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnBoarding(),
    );
  }
}
