import 'package:flutter/material.dart';
import 'package:tamkeen/features/onboardings/widgets/onboarding1.dart';
import 'package:tamkeen/features/onboardings/widgets/onboarding2.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final pagecontroller = PageController();
    return Scaffold(
      body: PageView(
        controller: pagecontroller,
        children: [
          Onboarding1(controller: pagecontroller),
          Onboarding2(controller: pagecontroller),
        ],
      ),
    );
  }
}
