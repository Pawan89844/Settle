import 'package:flutter/material.dart';
import 'package:settle/module/onboarding/views/receive_bank.dart';
import 'package:settle/module/onboarding/views/security_screen.dart';
import 'package:settle/module/onboarding/views/welcome_screen.dart';

class Pages {
  int id;
  Widget? page;

  Pages(this.id, this.page);
}

class OnboardingModel {
  static final PageController controller = PageController();

  List<Pages> get page => _pages;

  final List<Pages> _pages = [
    Pages(0, const WelcomeScreen()),
    Pages(1, const SecurityScreen()),
    Pages(2, const ReceiveBank()),
  ];

  static void nextPage() {
    controller.nextPage(
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }
}
