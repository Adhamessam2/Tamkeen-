import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class CustomTextFormfield extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  const CustomTextFormfield({
    super.key,
    required this.hintText,
    required this.isPassword,
    required this.controller,
  });

  @override
  State<CustomTextFormfield> createState() => _CustomTextFormfieldState();
}

class _CustomTextFormfieldState extends State<CustomTextFormfield> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: obscure && widget.isPassword,
      decoration: InputDecoration(
        hint: Text(widget.hintText, style: AppTextStyles.style3),
        fillColor: Colors.white.withValues(alpha: .1),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: .2)),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
                icon: Icon(
                  obscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colors.white.withValues(alpha: .5),
                ),
              )
            : null,
      ),
    );
  }
}
