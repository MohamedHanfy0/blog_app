// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blog_app/core/function/function.dart';
import 'package:blog_app/core/widgets/gradient_button.dart';
import 'package:blog_app/core/widgets/my_text_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';

import 'package:blog_app/core/theme/app_text_styles.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_text_form_field.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool visibality = false;
  @override
  Widget build(BuildContext context) {
    final formState = GlobalKey<FormState>();

    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    // @override
    // void dispose() {
    //   nameController.dispose();
    //   emailController.dispose();
    //   passwordController.dispose();
    //   super.dispose();
    // }

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign Up .",
              style: AppTextStyles.defult50w600,
            ),
            Form(
              key: formState,
              child: Column(
                spacing: 15,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  AuthTextFormField(
                    hintText: 'Name',
                    // controller: nameController,
                  ),
                  AuthTextFormField(
                    hintText: 'Email',
                    // controller: emailController,
                  ),
                  AuthTextFormField(
                    hintText: 'Password',
                    // controller: passwordController,
                    obscureText: visibality,
                    icon: GestureDetector(
                        onTap: () {
                          visibality = !visibality;
                          setState(() {});
                        },
                        child: Icon(visibality
                            ? Icons.visibility_off
                            : Icons.visibility)),
                  ),
                  GradinetButton(
                    text: 'Sing Up',
                    click: () {},
                  ),
                  HaveAnAccountWidget(
                    widget: MyTextButton(
                      text: 'SingIn',
                      click: () {
                        navigateReplacement(context, '/SignUp');
                      },
                    ),
                    text: 'Already have an Accont?  ',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
