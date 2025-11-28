import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class Mycoureses extends StatelessWidget {
  final String image;
  final String text;
  final String text2;
  final String text3;
  const Mycoureses({
    super.key,
    required this.colors,
    required this.image,
    required this.text,
    required this.text2,
    required this.text3,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 120,
      decoration: BoxDecoration(
        color: colors.tertiary,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: AppTextStyles.style1),
                SizedBox(height: 10),
                Text(text2, style: AppTextStyles.style3),
                SizedBox(height: 10),
                SizedBox(
                  width: 150,
                  height: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(16),
                    child: LinearProgressIndicator(
                      value: 1,
                      color: colors.error,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 30),
            Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                color: colors.error.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text3,
                  style: AppTextStyles.style3.copyWith(color: colors.error),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
