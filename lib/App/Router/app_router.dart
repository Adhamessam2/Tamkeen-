import 'package:go_router/go_router.dart';
import 'package:tamkeen/features/Auth/presentation/pages/login.dart';
import 'package:tamkeen/features/Auth/presentation/pages/signup.dart';
import 'package:tamkeen/features/splash_screen/splash_lottie';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const CustomSplashScreen()),
    GoRoute(path: '/login', builder: (context, state) => const Login()),
    GoRoute(path: '/signup', builder: (context, state) => const Signup()),
  ],
);
