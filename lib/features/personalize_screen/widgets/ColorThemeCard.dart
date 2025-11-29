import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';
import 'package:tamkeen/core/utils/appcolors.dart';
import 'package:tamkeen/features/personalize_screen/widgets/CardContainer.dart';

class ColorThemeCard extends StatelessWidget {
  const ColorThemeCard();

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Color Theme',
            style: AppTextStyles.style1.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              _ColorDot(color: AppColors.dot1, isSelected: true),
              SizedBox(width: 12),
              _ColorDot(color: AppColors.dot2),
              SizedBox(width: 12),
              _ColorDot(color: AppColors.dot3),
            ],
          ),
        ],
      ),
    );
  }
}

class _ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const _ColorDot({required this.color, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: isSelected
            ? Border.all(color: Colors.white.withOpacity(0.8), width: 3)
            : null,
      ),
      alignment: Alignment.center,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
    );
  }
}