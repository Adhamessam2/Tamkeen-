import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:tamkeen/features/Home/presentation/pages/home.dart';
import 'package:tamkeen/features/Home/presentation/widgets/navbaritems.dart';
import 'package:tamkeen/features/community/presentation/community.dart';
import 'package:tamkeen/features/mycoureses.dart/presentation/mycourses.dart';
import 'package:tamkeen/features/profile/presentation/profile.dart';
import 'package:tamkeen/features/search/presentation/pages/search.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: [
        const HomePageContent(),
        const Search(),
        const Mycourses(),
        const Community(),
        const Profile(),
      ],
      items: navBarsItems(),
      padding: EdgeInsets.all(17),
      margin: EdgeInsets.all(10),
      navBarHeight: 80,
      navBarStyle: NavBarStyle.style6,
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(40.0),
        colorBehindNavBar: Theme.of(context).colorScheme.errorContainer,
      ),
    );
  }
}
