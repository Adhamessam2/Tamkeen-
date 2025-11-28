import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class Recommendedcourses extends StatelessWidget {
  const Recommendedcourses({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> coursesimages = [Assets.background, Assets.background1];
    List<String> coursetitle = ['Creative \nCoding', 'Digital Journaling'];
    return SizedBox(
      height: 300,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.4,
        ),
        itemBuilder: (BuildContext context, int index) {
          final images = coursesimages[index];
          final titels = coursetitle[index];
          return Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 250, child: Image.asset(images)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(titels, style: AppTextStyles.style1),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
