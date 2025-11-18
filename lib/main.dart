import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';

void main() {
  runApp(const Tamkeen());
}

class Tamkeen extends StatelessWidget {
  const Tamkeen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Image.asset(Assets.audioengineering_course)),
    );
  }
}
