import 'package:flutter/material.dart';
import 'package:settle/module/onboarding/views/welcome_screen.dart';

class ReceiveBank extends StatelessWidget {
  const ReceiveBank({super.key});

  @override
  Widget build(BuildContext context) {
    return PageComponent(
      heading: 'Receive Now',
      subtitle: 'Get payments instantly from friends, family, or anyone',
      onPressed: () {},
      buttonName: 'Continue',
    );
  }
}
