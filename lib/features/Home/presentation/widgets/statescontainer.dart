import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class Statescontainer extends StatelessWidget {
  final String text1;
  final String text2;
  const Statescontainer({
    super.key,
    required this.colors,
    required this.text1,
    required this.text2,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colors.secondaryContainer,
            Color(0xFF1F253E),
            colors.errorContainer,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1, style: AppTextStyles.style1, maxLines: 1),
            SizedBox(height: 10),
            Text(text2, style: AppTextStyles.style4),
          ],
        ),
      ),
    );
  }
}
