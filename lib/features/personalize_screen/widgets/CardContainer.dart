import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  const CardContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E3A8A).withOpacity(0.3),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFF3B82F6).withOpacity(0.35),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF3B82F6).withOpacity(0.2),
            blurRadius: 24,
            spreadRadius: 1,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}




// ignore: unused_element
class FontSizeCard extends StatefulWidget {
  const FontSizeCard({super.key});

  @override
  State<FontSizeCard> createState() => _FontSizeCardState();
}

class _FontSizeCardState extends State<FontSizeCard> {
  double _fontSize = 0.5;

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Font Size',
            style: AppTextStyles.style1.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 12),

          Row(
            children: [
              Text(
                'A',
                style: AppTextStyles.style1.copyWith(
                  fontSize: 14,
                  color: const Color(0xFF94A3B8),
                ),
              ),

              Expanded(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 4,
                    activeTrackColor: const Color(0xFF60A5FA),
                    inactiveTrackColor: const Color(0xFF475569),
                    overlayShape: SliderComponentShape.noOverlay,
                    thumbShape: const RoundSliderThumbShape(
                      enabledThumbRadius: 8,
                    ),
                    thumbColor: const Color(0xFF60A5FA),
                  ),
                  child: Slider(
                    value: _fontSize,
                    onChanged: (v) {
                      setState(() {
                        _fontSize = v;
                      });
                    },
                  ),
                ),
              ),

              Text(
                'A',
                style: AppTextStyles.style1.copyWith(
                  fontSize: 22,
                  color: Colors.white.withOpacity(.9),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
