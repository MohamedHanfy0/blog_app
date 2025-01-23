// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
  });
  final TextEditingController controller;
  final String hintText;
  // final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // onSaved: onSaved,
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintText is Epty!!";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
