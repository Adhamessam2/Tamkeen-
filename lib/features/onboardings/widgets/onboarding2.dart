import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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
              child: Container(height: 320, width: 700, color: Colors.white),
            ),
          ),
          Center(
            child: Column(
              children: [
                Transform.rotate(
                  angle: -0.15,
                  child: Container(
                    width: 360,
                    height: 270,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Transform.flip(
                          flipX: true,
                          child: Image.asset(Assets.onbaoarding21, width: 200),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
