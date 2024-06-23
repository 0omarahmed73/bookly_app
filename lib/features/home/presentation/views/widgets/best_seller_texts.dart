import 'package:bookly/constants.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';

class BestSellerTexts extends StatelessWidget {
  const BestSellerTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Harry Potter',
            style:
                Styles.textStyle20.copyWith(fontFamily: kGTSectraFineRegular)),
        Text('and the Goblet of Fire',
            style:
                Styles.textStyle20.copyWith(fontFamily: kGTSectraFineRegular)),
        const Text(
          'J.K. Rowling',
          style: Styles.textStyle14,
        ),
        Row(
          children: [
            Text(
              '19.99 €',
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
