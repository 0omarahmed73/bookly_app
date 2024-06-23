import 'package:bookly/constants.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.solidStar,
          color: kIconColor,
          size: 18,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text('4.8', style: Styles.textStyle16),
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
