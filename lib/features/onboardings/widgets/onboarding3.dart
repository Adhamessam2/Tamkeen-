import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';
import 'package:tamkeen/core/utils/appcolors.dart';
import 'package:tamkeen/core/widgets/commonbutton.dart';
import 'package:tamkeen/features/onboardings/presentation/widgets/icon_container.dart';
import 'package:tamkeen/features/onboardings/presentation/widgets/pageindicator.dart';

class Onboarding3 extends StatelessWidget {
  final PageController controller;
  const Onboarding3({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitebackground,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                " Visualize Your \nSuccess",
                textAlign: TextAlign.center,
                style: AppTextStyles.style2.copyWith(color: Colors.black),
              ),
              SizedBox(height: 20),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Text(
                    'Heres a preview of the achievements and\n progress that await you on your learning\n journey.',
                    style: AppTextStyles.style3.copyWith(
                      color: Color(0xff4B5563),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Positioned(
                    top: 35,
                    child: ImageIconcontainer(
                      image: Assets.lampicon,
                      width: 45,
                      height: 45,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 45,
                    child: ImageIconcontainer(
                      image: Assets.staricon,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Stack(
                children: [
                  Image.asset(Assets.container),
                  Positioned(
                    top: 130,
                    left: 45,
                    child: ImageIconcontainer(
                      image: Assets.fireicon,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Positioned(
                    bottom: 150,
                    right: 50,
                    child: ImageIconcontainer(
                      image: Assets.rocketicon,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
              Pageindicator(controller: controller),
              SizedBox(height: 20),
              Commonbutton(
                text: 'Start Learning',
                width: 350,
                height: 60,
                onPressed: () {
                  controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
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
