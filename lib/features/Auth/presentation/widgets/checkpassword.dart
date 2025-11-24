import 'package:flutter/material.dart';

double calculatePasswordStrength(String value) {
  if (value.isEmpty) return 0;

  double strength = 0;

  if (value.length >= 6) strength += 0.25;
  if (value.length >= 8) strength += 0.25;
  if (RegExp(r'[A-Z]').hasMatch(value) && RegExp(r'[a-z]').hasMatch(value))
    strength += 0.25;
  if (RegExp(r'[0-9]').hasMatch(value) ||
      RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(value))
    strength += 0.25;

  return strength.clamp(0, 1);
}

String strengthLabel(double strength) {
  if (strength == 0) return 'Enter password';
  if (strength < 0.25) return 'Too weak';
  if (strength < 0.5) return 'Weak';
  if (strength < 0.75) return 'Medium';
  return 'Strong';
}

Color strengthColor(double strength) {
  if (strength < 0.25) return Colors.red;
  if (strength < 0.5) return Colors.orange;
  if (strength < 0.75) return Colors.yellow.shade700;
  return Colors.green;
}
