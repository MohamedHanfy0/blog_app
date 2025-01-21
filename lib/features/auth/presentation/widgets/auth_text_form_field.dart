import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
    super.key,
    required this.hello,
  });

  final String hello;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        
        hintText: hello,
      ),
    );
  }
}
