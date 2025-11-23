import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class Commonbutton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const Commonbutton({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: Size(320, 55)),
      onPressed: () {
        onPressed?.call();
      },
      child: Text(text, style: AppTextStyles.style1),
    );
  }
}
