import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/appcolors.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';
import 'package:tamkeen/features/personalize_screen/widgets/CardContainer.dart';
import 'package:tamkeen/features/personalize_screen/widgets/ColorThemeCard.dart';
import 'package:tamkeen/features/personalize_screen/widgets/LivePreviewCard.dart';
import 'package:tamkeen/features/personalize_screen/widgets/ScreenReaderCard.dart';

class PersonalizeScreen extends StatelessWidget {
  const PersonalizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.bgGradientTop, AppColors.bgGradientBottom],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 430),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      'Personalize Your Experience',
                      style: AppTextStyles.style1.copyWith(fontSize: 25),
                    ),

                    const SizedBox(height: 16),
                    Text(
                      'Live Preview',
                      style: AppTextStyles.style3.copyWith(
                        fontSize: 12,
                        color: AppColors.secondaryText,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const LivePreviewCard(),
                            const SizedBox(height: 20),
                            const _SectionTitle(title: 'Customization'),
                            const SizedBox(height: 12),
                            const FontSizeCard(),
                            const SizedBox(height: 12),
                            const ColorThemeCard(),
                            const SizedBox(height: 20),
                            const _SectionTitle(title: 'Accessibility'),
                            const SizedBox(height: 12),
                            const ScreenReaderCard(),
                            const SizedBox(height: 12),
                            const SpeechRateCard(),
                            const SizedBox(height: 12),
                            const SignLanguageCard(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AppColors.btnGradientStart,
                            AppColors.btnGradientEnd,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.btnGradientEnd.withOpacity(0.4),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        onPressed: () {
                          // TODO: navigate to home
                          // context.go('/home');
                        },
                        child: Text(
                          'Save & Continue',
                          style: AppTextStyles.style1.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: Text(
                        'Customize Later',
                        style: AppTextStyles.style3.copyWith(
                          color: AppColors.secondaryText,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(title, style: AppTextStyles.style1.copyWith(fontSize: 14)),
    );
  }
}
