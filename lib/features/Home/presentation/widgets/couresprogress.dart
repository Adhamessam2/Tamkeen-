import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';
import 'package:tamkeen/core/widgets/commonbutton.dart';

class Couresprogress extends StatelessWidget {
  const Couresprogress({super.key, required this.colors});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 380,
          height: 380,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)),
          child: Image.asset(Assets.section),
        ),
        Positioned(
          right: 40,
          top: 35,
          child: CircularProgressIndicator(
            strokeWidth: 5,
            strokeAlign: 3,
            value: 1,
            color: colors.error,
          ),
        ),
        Positioned(
          right: 40,
          top: 42,
          child: Text('75%', style: AppTextStyles.style1),
        ),
        Positioned(
          bottom: 35,
          left: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Advanced UX Design', style: AppTextStyles.style4),
              SizedBox(height: 10),
              Text('Chapter 3: Prototyping', style: AppTextStyles.style4),
              SizedBox(height: 20),
              Commonbutton(text: 'Continue Learning', width: 310, height: 55),
            ],
          ),
        ),
      ],
    );
  }
}
