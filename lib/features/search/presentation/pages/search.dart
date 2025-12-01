import 'package:flutter/material.dart';
import 'package:tamkeen/features/search/presentation/widgets/filtercontainer.dart';
import 'package:tamkeen/features/search/presentation/widgets/searchcontainer.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.errorContainer,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SearchContainer(colors: colors),
              SizedBox(height: 20),
              FilterContainer(colors: colors),
            ],
          ),
        ),
      ),
    );
  }
}
