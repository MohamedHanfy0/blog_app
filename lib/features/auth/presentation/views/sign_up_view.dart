
import 'package:blog_app/core/function/function.dart';
import 'package:blog_app/core/widgets/gradient_button.dart';
import 'package:blog_app/core/widgets/my_text_button.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/core/theme/app_text_styles.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final supabaseClient = Supabase.instance.client;
  final formState = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
            Form(
              key: formState,
              child: Column(
                spacing: 15,
                children: [
                  SizedBox(height: 15),
                  AuthTextFormField(
                    hintText: 'Name',
                    controller: nameController,
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
                    text: 'Sign Up',
                    click: () async {
                      if (formState.currentState!.validate()) {
                        final name = nameController.text.trim();
                        final email = emailController.text.trim();
                        final password = passwordController.text.trim();



                        context.read<AuthBloc>().add(
                              AuthSignUp(
                                name: name,
                                email: email,
                                password: password,
                              ),
                            );
                      }
                    },
                  ),
                  HaveAnAccountWidget(
                    widget: MyTextButton(
                      text: 'Sign In',
                      click: () {
                        navigateReplacement(context, '/SignIn');
                      },
                    ),
                    text: 'Already have an Account?  ',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
