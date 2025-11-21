import 'package:go_router/go_router.dart';
import 'package:tamkeen/features/Auth/presentation/Login.dart';
import 'package:tamkeen/features/Auth/presentation/pages/signup.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => const Login()),
    GoRoute(path: "/signup", builder: (context, state) => const Signup()),
  ],
);
