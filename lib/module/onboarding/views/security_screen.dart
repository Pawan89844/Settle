import 'package:flutter/material.dart';
import 'package:settle/module/onboarding/model/onboarding_model.dart';
import 'package:settle/module/onboarding/views/welcome_screen.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageComponent(
      heading: 'Settle Shield',
      subtitle: 'Secure logins and transaction monitoring for peace of mind.',
      onPressed: () => OnboardingModel.nextPage(),
      buttonName: 'Continue',
    );
  }
}
