import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_theme.dart';

void main() {
  runApp(const Tamkeen());
}

class Tamkeen extends StatelessWidget {
  const Tamkeen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return MaterialApp(
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: ElevatedButton(onPressed: () {}, child: Text("theme")),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: colors.secondaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("test theme"),
            ),
          ],
        ),
      ),
    );
  }
}
