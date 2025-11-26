import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tamkeen/core/utils/appcolors.dart';

class Pageindicator extends StatelessWidget {
  const Pageindicator({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SmoothPageIndicator(
      controller: controller,
      count: 4,
      effect: CustomizableEffect(
        dotDecoration: DotDecoration(
          color: AppColors.gray,
          width: 16,
          height: 6,
          borderRadius: BorderRadius.circular(3),
        ),
        activeDotDecoration: DotDecoration(
          color: colors.primary,
          width: 30,
          height: 6,
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
