import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/appcolors.dart';

class ImageIconcontainer extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  const ImageIconcontainer({
    super.key,
    required this.image,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.gray,
              Colors.white.withValues(alpha: 0.7),
              Colors.white.withValues(alpha: 0.9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.gray,
              offset: Offset(2, 10),
              blurRadius: 15,
              spreadRadius: -3,
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 7, top: 5),
          child: Transform(
            transform: Matrix4.identity()..scale(0.8),
            child: Image.asset(image),
          ),
        ),
      ),
    );
  }
}
