import 'package:flutter/material.dart';

class Iconcontainer extends StatelessWidget {
  final IconData icon;
  const Iconcontainer({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withValues(alpha: 0.2),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, color: Colors.white),
      ),
    );
  }
}
