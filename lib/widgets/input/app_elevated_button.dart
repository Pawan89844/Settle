import 'package:flutter/material.dart';
import 'package:settle/style/fonts/app_text.dart';

class AppElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonName;
  const AppElevatedButton(
      {super.key, this.onPressed, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      child: AppText(buttonName, color: Colors.white),
    );
  }
}
