import 'package:flutter/material.dart';
import 'package:tamkeen/core/router/app_router.dart';
import 'package:tamkeen/core/utils/app_theme.dart';

void main() {
  runApp(const Tamkeen());
}

class Tamkeen extends StatelessWidget {
  const Tamkeen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
