import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';
import 'package:tamkeen/core/utils/appcolors.dart';
import 'package:tamkeen/features/personalize_screen/widgets/CardContainer.dart';

class ScreenReaderCard extends StatelessWidget {
  const ScreenReaderCard();

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Row(
        children: [
          const Icon(Icons.volume_up, color: AppColors.sliderActive, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Screen Reader',
              style: AppTextStyles.style1.copyWith(fontSize: 14),
            ),
          ),
          Switch(
            value: true,
            onChanged: (_) {},
            activeColor: AppColors.sliderActive,
            activeTrackColor: const Color(0xFF1E3A8A).withOpacity(0.5),
            inactiveTrackColor: const Color(0xFF1E293B),
          ),
        ],
      ),
    );
  }
}

// ignore: unused_element
class SpeechRateCard extends StatefulWidget {
  const SpeechRateCard({super.key});

  @override
  State<SpeechRateCard> createState() => _SpeechRateCardState();
}

class _SpeechRateCardState extends State<SpeechRateCard> {
  int _selectedRate = 2;

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Speech Rate',
                style: AppTextStyles.style1.copyWith(fontSize: 14),
              ),
              Text(
                '${_selectedRate + 1}x',
                style: AppTextStyles.style3.copyWith(
                  fontSize: 12,
                  color: const Color(0xFF22C55E),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(
              5,
              (index) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedRate = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeOut,
                      height: 24 + (index * 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: index <= _selectedRate
                            ? const Color(0xFF22C55E)
                            : const Color(0xFF475569),
                        boxShadow: index <= _selectedRate
                            ? [
                                BoxShadow(
                                  color: const Color(0xFF22C55E).withOpacity(0.3),
                                  blurRadius: 6,
                                  offset: const Offset(0, 2),
                                ),
                              ]
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: unused_element
class SignLanguageCard extends StatelessWidget {
  const SignLanguageCard();

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign Language',
            style: AppTextStyles.style1.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              Assets.signlanuage,
              fit: BoxFit.cover,
              height: 120,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: index == 1 ? 8 : 6,
                height: index == 1 ? 8 : 6,
                decoration: BoxDecoration(
                  color: index == 1
                      ? Colors.white
                      : Colors.white.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
