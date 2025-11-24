import 'package:flutter/material.dart';
import 'package:tamkeen/features/Auth/presentation/widgets/checkpassword.dart';
import 'package:tamkeen/features/Auth/presentation/widgets/customtextformield.dart';
import 'package:tamkeen/features/Auth/presentation/widgets/passwordstrenght.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  const PasswordField({super.key, required this.controller});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  double _strength = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onPasswordChanged);
  }

  void _onPasswordChanged() {
    final value = widget.controller.text;
    final newStrength = calculatePasswordStrength(value);
    setState(() {
      _strength = newStrength;
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onPasswordChanged);
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormfield(
          hintText: 'Password',
          isPassword: true,
          controller: widget.controller,
        ),
        const SizedBox(height: 8),
        PasswordStrengthBar(strength: _strength),
      ],
    );
  }
}
