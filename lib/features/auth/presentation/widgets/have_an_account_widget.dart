
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  final Widget widget;
  final String text;
  const HaveAnAccountWidget({
    super.key, required this.widget, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        widget,
      ],
    );
  }
}
