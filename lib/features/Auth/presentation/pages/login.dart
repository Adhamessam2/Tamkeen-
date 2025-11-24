import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tamkeen/core/utils/app_text_styles.dart';
import 'package:tamkeen/core/widgets/assistant.dart';
import 'package:tamkeen/core/widgets/commonbutton.dart';
import 'package:tamkeen/features/Auth/presentation/widgets/authcontainer.dart';
import 'package:tamkeen/features/Auth/presentation/widgets/backgroundcontainer.dart';
import 'package:tamkeen/features/Auth/presentation/widgets/customtextformield.dart';
import 'package:tamkeen/features/Auth/presentation/widgets/icon_container.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: Backgroundcontainer(
        colors: colors,
        child: Column(
          children: [
            SizedBox(height: 130),
            Center(
              child: Auth_container(
                height: 477,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text('welcome Back', style: AppTextStyles.style2),
                      SizedBox(height: 33),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email",
                          style: AppTextStyles.style1.copyWith(
                            color: Colors.white.withValues(alpha: 0.8),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 320,
                        height: 60,
                        child: CustomTextFormfield(
                          controller: emailController,
                          hintText: "Enter your email",
                          isPassword: false,
                        ),
                      ),
                      SizedBox(height: 25),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: AppTextStyles.style1.copyWith(
                            color: Colors.white.withValues(alpha: 0.8),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 320,
                        child: CustomTextFormfield(
                          controller: passwordController,
                          hintText: "Enter your password",
                          isPassword: true,
                        ),
                      ),
                      SizedBox(height: 40),
                      Commonbutton(
                        text: 'Login',
                        onPressed: () {
                          GoRouter.of(context).push('/signup');
                        },
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: AppTextStyles.style3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text("Or continue with", style: AppTextStyles.style3),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Iconcontainer(icon: EvaIcons.google),
                SizedBox(width: 20),
                Iconcontainer(icon: EvaIcons.facebook),
                SizedBox(width: 20),
                Iconcontainer(icon: EvaIcons.twitter),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Assistant(),
    );
  }
}
