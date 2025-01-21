// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blog_app/core/widgets/gradient_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/dont_have_an_account_widget.dart';
import 'package:flutter/material.dart';

import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/core/theme/app_text_styles.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_text_form_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
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
            Column(
              spacing: 15,
              children: [
                SizedBox(
                  height: 15,
                ),
                AuthTextFormField(hello: 'Name'),
                AuthTextFormField(hello: 'Email'),
                AuthTextFormField(hello: 'Password'),
                GradinetButton(
                  text: 'Sing Up',
                  click: () {},
                ),
                DontHaveAnAccountWidget()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
