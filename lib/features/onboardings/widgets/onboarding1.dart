import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tamkeen/core/utils/app_assets.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';
import 'package:tamkeen/core/widgets/backgroundcontainer.dart';
import 'package:tamkeen/core/widgets/commonbutton.dart';

class Onboarding1 extends StatelessWidget {
  final PageController controller;
  const Onboarding1({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: Backgroundcontainer(
        colors: Theme.of(context).colorScheme,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).push('/login');
                    },
                    child: Text("Skip", style: AppTextStyles.style1),
                  ),
                ),
              ),
              SizedBox(height: 100),
              Image.asset(Assets.onboarding_image),
              SizedBox(height: 50),
              Text('Welcome to Tamkeen', style: AppTextStyles.style2),
              SizedBox(height: 20),
              Text(
                'Your journey to empowerment starts here. \nLets get started!',
                textAlign: TextAlign.center,
                style: AppTextStyles.style3,
              ),
              SizedBox(height: 130),
              SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    color: colors.onPrimary.withValues(alpha: 0.5),
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
              ),
              SizedBox(height: 30),
              Commonbutton(
                text: "Begin Journey",
                width: 340,
                height: 60,
                onPressed: () {
                  controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
