import 'package:flutter/material.dart';
import 'package:tamkeen/core/utils/app_assets.dart';

class Assistant extends StatelessWidget {
  const Assistant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withValues(alpha: 0.2),
      ),
      child: IconButton(onPressed: () {}, icon: Image.asset(Assets.person)),
    );
  }
}
