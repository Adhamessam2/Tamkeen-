import 'package:go_router/go_router.dart';
import 'package:tamkeen/features/Auth/presentation/pages/login.dart';
import 'package:tamkeen/features/Auth/presentation/pages/signup.dart';
import 'package:tamkeen/features/Home/presentation/pages/home.dart';
import 'package:tamkeen/features/community/presentation/community.dart';
import 'package:tamkeen/features/mycoureses.dart/presentation/mycourses.dart';
import 'package:tamkeen/features/onboardings/presentation/pages/onboardings.dart';
import 'package:tamkeen/features/personalize_screen/presentation/personalize_screen.dart';
import 'package:tamkeen/features/profile/presentation/profile.dart';
import 'package:tamkeen/features/search/presentation/pages/search.dart';
import 'package:tamkeen/features/splash_screen/splash_lottie';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const CustomSplashScreen()),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const Onboarding(),
    ),
    GoRoute(path: '/login', builder: (context, state) => const Login()),
    GoRoute(path: '/signup', builder: (context, state) => const Signup()),
    GoRoute(
      path: '/personalize',
      builder: (context, state) => const PersonalizeScreen(),
    ),
    GoRoute(path: '/home', builder: (context, state) => const Home()),
    GoRoute(
      path: '/mycoureses',
      builder: (context, state) => const Mycourses(),
    ),
    GoRoute(path: '/search', builder: (context, state) => const Search()),
    GoRoute(path: '/community', builder: (context, state) => const Community()),
    GoRoute(path: '/profile', builder: (context, state) => const Profile()),
  ],
);
