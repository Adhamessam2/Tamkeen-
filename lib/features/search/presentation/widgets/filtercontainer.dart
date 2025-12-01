import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class FilterContainer extends StatefulWidget {
  const FilterContainer({super.key, required this.colors});
  final ColorScheme colors;

  @override
  State<FilterContainer> createState() => _FilterContainerState();
}

class _FilterContainerState extends State<FilterContainer> {
  final List<String> _content = ["Design", "Development", "Engineering"];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final bool isselcted = (selectedindex == index);
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedindex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: isselcted
                    ? widget.colors.primary
                    : widget.colors.tertiary,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(_content[index], style: AppTextStyles.style5),
              ),
            ),
          );
        },
      ),
    );
  }
}
