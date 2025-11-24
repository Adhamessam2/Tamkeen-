import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class Commonbutton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  const Commonbutton({
    super.key,
    this.onPressed,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: Size(width, height)),
      onPressed: () {
        onPressed?.call();
      },
      child: Text(text, style: AppTextStyles.style1),
    );
  }
}
