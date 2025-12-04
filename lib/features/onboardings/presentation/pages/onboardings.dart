import 'package:flutter/material.dart';
import 'package:tamkeen/features/onboardings/presentation/pages/onboarding1.dart';
import 'package:tamkeen/features/onboardings/presentation/pages/onboarding2.dart';
import 'package:tamkeen/features/onboardings/presentation/pages/onboarding3.dart';

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
          Onboarding3(controller: pagecontroller),
          // Onboarding4(),
        ],
      ),
    );
  }
}
