import 'package:flutter/material.dart';
import 'package:settle/module/onboarding/model/onboarding_model.dart';
import 'package:settle/style/fonts/app_heading.dart';
import 'package:settle/style/fonts/app_text.dart';
import 'package:settle/widgets/input/app_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageComponent(
      heading: 'Effortless Payments',
      subtitle: 'Your money is safe with advanced security measures.',
      onPressed: () => OnboardingModel.nextPage(),
      buttonName: 'Continue',
    );
  }
}

class PageComponent extends StatelessWidget {
  final String heading, subtitle, buttonName;
  final void Function()? onPressed;
  const PageComponent(
      {super.key,
      required this.heading,
      required this.subtitle,
      required this.onPressed,
      required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: AppHeading(heading),
          ),
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 5.0),
              child: AppText(subtitle)),
          const Placeholder(
              fallbackHeight: 300.0, strokeWidth: double.infinity),
          const Spacer(),
          AppElevatedButton(onPressed: onPressed, buttonName: buttonName),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
