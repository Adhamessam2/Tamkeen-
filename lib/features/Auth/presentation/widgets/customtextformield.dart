import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class CustomTextFormfield extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  const CustomTextFormfield({
    super.key,
    required this.hintText,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hint: Text(hintText, style: AppTextStyles.style3),
        fillColor: Colors.white.withValues(alpha: 0.1),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.2)),
        ),
        suffixIcon: Icon(
          isPassword ? Icons.visibility_off_outlined : null,
          color: Colors.white.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}
