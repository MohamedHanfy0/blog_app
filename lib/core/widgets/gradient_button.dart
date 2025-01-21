
import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class GradinetButton extends StatelessWidget {
  final String text;
 final VoidCallback click;
  const GradinetButton({
    super.key,
    required this.text,
    required this.click,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Container(
        width: double.infinity,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              AppPallete.gradient1,
              AppPallete.gradient2,
              AppPallete.gradient3,
            ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: Text(
          text,
          style: AppTextStyles.defult50w600.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}
