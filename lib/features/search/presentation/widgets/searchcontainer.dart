import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key, required this.colors});
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search_outlined, color: Colors.white),
        hintText: "Ask AI to find courses",
        hintStyle: AppTextStyles.style1,
        fillColor: colors.tertiary,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.mic_none_outlined, color: Colors.white),
        ),
      ),
    );
  }
}
