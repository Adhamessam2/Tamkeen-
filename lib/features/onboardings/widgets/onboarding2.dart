import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';
import 'package:tamkeen/features/onboardings/presentation/widgets/pageindicator.dart';
import 'package:tamkeen/features/onboardings/presentation/widgets/rotatedcontainer.dart';

class Onboarding2 extends StatelessWidget {
  final PageController controller;
  const Onboarding2({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.primary,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Transform.rotate(
              angle: -0.8,
              child: Container(
                height: 320,
                width: 700,
                color: Color(0xffF1F3F4),
              ),
            ),
          ),
          Center(
            child: SafeArea(
              child: Column(
                children: [
                  Rotatedcontainer(
                    image: Assets.onbaoarding21,
                    angle: -0.1,
                    text: "Smart Recommendations",
                    text2: "Courses curated for your goals.",
                    childangle: 0.03,
                  ),
                  SizedBox(height: 25),
                  Rotatedcontainer(
                    image: Assets.image1,
                    angle: 0.1,
                    text: '24/7 AI Companion',
                    text2: 'Get instant help, anytime.',
                    childangle: -0.025,
                  ),
                  SizedBox(height: 25),
                  Rotatedcontainer(
                    image: Assets.image,
                    angle: -0.1,
                    text: 'Adaptive Paths',
                    text2: 'A learning path that evolves with you.',
                    childangle: 0.03,
                  ),
                  Pageindicator(controller: controller),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
