import 'package:flutter/material.dart';

class Backgroundcontainer extends StatelessWidget {
  final Widget child;
  const Backgroundcontainer({
    super.key,
    required this.colors,
    required this.child,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colors.errorContainer,
            colors.secondary,
            colors.primary,
            colors.errorContainer,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
