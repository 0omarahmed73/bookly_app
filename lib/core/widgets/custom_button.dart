import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.borderRadius,
      required this.text,
      required this.textStyle,
      this.onPressed});
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final String text;
  final TextStyle textStyle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: onPressed ?? () {},
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              backgroundColor: backgroundColor),
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
