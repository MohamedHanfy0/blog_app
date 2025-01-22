import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final VoidCallback click;
  const MyTextButton({
    super.key, required this.text, required this.click,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Text(
        text,
        style:
            TextStyle(color: AppPallete.gradient2, fontWeight: FontWeight.w600),
      ),
    );
  }
}
