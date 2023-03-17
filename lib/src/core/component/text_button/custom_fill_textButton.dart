import 'package:flutter/material.dart';
import 'package:petskin/src/config/constant/app_color.dart';
// import 'package:petskin/src/config/theme/text_theme.dart';

class CustomFilledTextButton extends StatelessWidget {
  final double? w;
  final double? h;
  final String content;
  final Function() onPressed;
  final Color? backgroundColor;

  const CustomFilledTextButton({
    required this.w,
    required this.h,
    required this.content,
    required this.onPressed,
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          content,
          style: const TextStyle(
            // 14-20
            // fontSize: 18,
            // letterSpacing: 0.1,
            // fontWeight: FontWeight.w500,
            color: TEXT_COLOR,
          ),
        ),
      ),
    );
  }
}
