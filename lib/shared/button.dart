import 'package:flutter/material.dart';

import 'constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.callback, required this.text});
  final VoidCallback callback;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: callback,
        style: buttonStyle,
        child: Text(
          text,
          style: buttonText,
        ));
  }
}
