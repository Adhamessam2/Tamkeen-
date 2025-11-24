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
import 'package:tamkeen/features/Auth/presentation/widgets/passwordfield.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: Backgroundcontainer(
        colors: colors,
        child: Column(
          children: [
            SizedBox(height: 130),
            Center(
              child: Auth_container(
                height: 580,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text('Create Account', style: AppTextStyles.style2),
                      SizedBox(height: 33),
                      SizedBox(
                        width: 320,
                        height: 60,
                        child: CustomTextFormfield(
                          controller: nameController,
                          hintText: "Full Name",
                          isPassword: false,
                        ),
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: 320,
                        child: CustomTextFormfield(
                          controller: emailController,
                          hintText: "Email",
                          isPassword: false,
                        ),
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: 320,
                        child: PasswordField(controller: passwordController),
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: 320,
                        child: CustomTextFormfield(
                          controller: confirmPasswordController,
                          hintText: "Confirm Password",
                          isPassword: true,
                        ),
                      ),
                      SizedBox(height: 40),
                      Commonbutton(text: 'Sign up', onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text("Or sign up with", style: AppTextStyles.style3),
            SizedBox(height: 20),
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
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ", style: AppTextStyles.style3),
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  child: Text(
                    "Login",
                    style: AppTextStyles.style3.copyWith(
                      color: colors.errorContainer,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Assistant(),
    );
  }
}
