// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  SocialButton({
    super.key,
    required this.backgroundImage,
  });
  ImageProvider backgroundImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: backgroundImage,
      backgroundColor: Colors.transparent,
      radius: 14,
    );
  }
}