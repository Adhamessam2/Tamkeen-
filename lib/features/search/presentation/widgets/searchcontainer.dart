import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key, required this.colors});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 60,
      decoration: BoxDecoration(
        color: colors.tertiary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ListTile(
        leading: Icon(Icons.search_outlined, color: Colors.white),
        title: Text('Ask AI to find courses'),
        textColor: Colors.white,
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.mic_none_outlined, color: Colors.white),
        ),
      ),
    );
  }
}
