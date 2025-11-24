import 'package:flutter/material.dart';
import 'package:tamkeen/features/Auth/presentation/widgets/checkpassword.dart';

class PasswordStrengthBar extends StatelessWidget {
  final double strength;

  const PasswordStrengthBar({super.key, required this.strength});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 320,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: strength,
              minHeight: 6,
              backgroundColor: Colors.white.withValues(alpha: 0.1),
              valueColor: AlwaysStoppedAnimation<Color>(
                strengthColor(strength),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          strengthLabel(strength),
          style: TextStyle(fontSize: 12, color: strengthColor(strength)),
        ),
      ],
    );
  }
}
