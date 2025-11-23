import 'package:flutter/material.dart';

class Auth_container extends StatelessWidget {
  final Widget child;
  final double height;
  const Auth_container({super.key, required this.child, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 385,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(38),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withValues(alpha: 0.25),
        //     blurRadius: 50,
        //     spreadRadius: -12,
        //     offset: Offset(0, 25),
        //   ),
        // ],
      ),
      child: child,
    );
  }
}
