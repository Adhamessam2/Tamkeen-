import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';
import 'package:tamkeen/features/search/presentation/widgets/coursesdetails.dart';

class Coureses extends StatelessWidget {
  const Coureses({super.key, required this.colors});
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 7),
      itemCount: courses.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.55,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (BuildContext context, int index) {
        final course = courses[index];
        return Container(
          decoration: BoxDecoration(
            color: colors.tertiary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Image.asset(
                        course.imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(EvaIcons.heartOutline, color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 7,
                      child: Container(
                        width: 60,
                        height: 25,
                        decoration: BoxDecoration(
                          color: colors.tertiary,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            course.category,
                            style: AppTextStyles.style5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(course.title, style: AppTextStyles.style1),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(course.instructorImageUrl, width: 25),
                          SizedBox(width: 10),
                          Text(course.instructor, style: AppTextStyles.style5),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            Assets.staricon,
                            width: 20,
                            color: Colors.yellow,
                          ),
                          Text(
                            course.rating.toString(),
                            style: AppTextStyles.style6,
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.people_alt_outlined,
                            size: 20,
                            color: colors.tertiaryContainer,
                          ),
                          SizedBox(width: 5),
                          Text(
                            course.studentCount,
                            style: AppTextStyles.style6,
                          ),
                          SizedBox(width: 10),
                          Icon(
                            EvaIcons.clockOutline,
                            size: 20,
                            color: colors.tertiaryContainer,
                          ),
                          SizedBox(width: 5),
                          Text(course.duration, style: AppTextStyles.style6),
                        ],
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 75),
                        child: Text(
                          course.price.toString(),
                          style: AppTextStyles.style4.copyWith(
                            color: colors.error,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
