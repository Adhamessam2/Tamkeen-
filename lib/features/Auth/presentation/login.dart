import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/text_styles.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colors.error, colors.secondaryContainer],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Center(
              child: Text(
                'Login Screen',
                style: TextStyle(
                  fontSize: 24,
                  color: colors.onSecondaryContainer,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: const Size(350, 48)),
              onPressed: () {},
              child: Text("Continue", style: TextStyles.style1),
            ),
          ],
        ),
      ),
    );
  }
}
