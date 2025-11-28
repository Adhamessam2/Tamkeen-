import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class Headercontainer extends StatelessWidget {
  const Headercontainer({super.key, required this.colors});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 380,
        height: 60,
        decoration: BoxDecoration(
          color: colors.tertiary,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(Assets.image4),
              SizedBox(width: 20),
              Text(
                'Hello, Alex! 👋',
                style: AppTextStyles.style1.copyWith(fontSize: 20),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Image.asset(Assets.bill)),
            ],
          ),
        ),
      ),
    );
  }
}
