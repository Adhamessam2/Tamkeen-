import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';

class Rotatedcontainer extends StatelessWidget {
  final String image;
  final double angle;
  final double childangle;
  final String text;
  final String text2;
  const Rotatedcontainer({
    super.key,
    required this.image,
    required this.angle,
    required this.text,
    required this.text2,
    required this.childangle,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 300,
          height: 260,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Transform.rotate(
            angle: childangle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    //..rotateZ(0.035)
                    ..scale(1.06),
                  child: Image.asset(image),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: AppTextStyles.style1.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        text2,
                        style: AppTextStyles.style3.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
