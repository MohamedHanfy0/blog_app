// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AuthTextFormField extends StatelessWidget {
  AuthTextFormField(
      {super.key,
      this.obscureText = false,
      required this.hintText,
      // required this.controller,
      this.icon});
  final bool obscureText;
  Widget? icon;
  final String hintText;
  // final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      // controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintText is Epty!!";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        suffixIcon: icon,
        hintText: hintText,
      ),
    );
  }
}
