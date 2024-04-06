import 'package:flutter/material.dart';
import 'package:settle/module/onboarding/model/onboarding_model.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});
  final OnboardingModel _onBoarding = OnboardingModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0),
      body: PageView.builder(
        controller: OnboardingModel.controller,
        itemCount: _onBoarding.page.length,
        itemBuilder: (context, i) => _onBoarding.page[i].page,
      ),
    );
  }
}
