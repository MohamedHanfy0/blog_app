// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blog_app/core/function/function.dart';
import 'package:blog_app/core/widgets/gradient_button.dart';
import 'package:blog_app/core/widgets/my_text_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';

import 'package:blog_app/core/theme/app_text_styles.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_text_form_field.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool visibality = false;
  @override
  Widget build(BuildContext context) {
    final formState = GlobalKey<FormState>();

   final emailController = TextEditingController();
  final passwordController = TextEditingController();

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign In.",
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
                    hintText: 'Email',
                    
                    controller: emailController,
                  ),
                  AuthTextFormField(
                    hintText: 'Password', 
                    controller: passwordController,
                   
                 
                  ),
                  GradinetButton(
                    text: 'Sing Up',
                    click: () {},
                  ),
                  HaveAnAccountWidget(
                    widget: MyTextButton(
                      text: 'SingIn',
                      click: () {
                        navigateReplacement(context, '/');
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
