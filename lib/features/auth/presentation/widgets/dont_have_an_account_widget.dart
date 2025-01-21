
import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dont have an Accont?  ",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        Text(
          "SingIn",
          style: TextStyle(
              color: AppPallete.gradient2,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
