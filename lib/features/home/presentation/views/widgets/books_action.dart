import 'package:bookly/constants.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(children: [
        CustomButton(
          backgroundColor: Colors.white,
          borderRadius: const BorderRadius.only(
            bottomLeft: kBorderRadius,
            topLeft: kBorderRadius,
          ),
          textStyle: Styles.textStyle18
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          text: '19.99€',
        ),
        CustomButton(
          backgroundColor: kButtonColor,
          borderRadius: const BorderRadius.only(
              bottomRight: kBorderRadius, topRight: kBorderRadius),
          textStyle: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          text: 'Free preview',
        )
      ]),
    );
  }
}
