import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';
import 'package:tamkeen/features/Home/presentation/widgets/couresprogress.dart';
import 'package:tamkeen/features/Home/presentation/widgets/headercontainer.dart';
import 'package:tamkeen/features/Home/presentation/widgets/mycourses.dart';
import 'package:tamkeen/features/Home/presentation/widgets/recommendedcoureses.dart';
import 'package:tamkeen/features/Home/presentation/widgets/statescontainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.errorContainer,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Headercontainer(colors: colors),
                  SizedBox(height: 16),
                  Couresprogress(colors: colors),
                  SizedBox(height: 15),
                  Text('Quick Stats', style: AppTextStyles.style4),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Statescontainer(
                        colors: colors,
                        text1: 'Minutes Learned',
                        text2: '1.204',
                      ),
                      Statescontainer(
                        colors: colors,
                        text1: 'Courses Completed',
                        text2: '5',
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Recommended Courses', style: AppTextStyles.style4),
                      Text(
                        'See all',
                        style: AppTextStyles.style3.copyWith(
                          color: colors.primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Recommendedcourses(),
                  SizedBox(height: 35),
                  Text('My Courses', style: AppTextStyles.style4),
                  SizedBox(height: 20),
                  Mycoureses(
                    colors: colors,
                    image: Assets.image2,
                    text: 'Intro to \nArchitecture',
                    text2: '3 of 10 lessons',
                    text3: '30%',
                  ),
                  SizedBox(height: 20),
                  Mycoureses(
                    colors: colors,
                    image: Assets.image3,
                    text: 'Astronomy 101',
                    text2: '8 of 12 lessons',
                    text3: '66%',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
