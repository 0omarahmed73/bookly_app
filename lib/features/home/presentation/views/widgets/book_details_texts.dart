import 'package:bookly/constants.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsTexts extends StatelessWidget {
  const BookDetailsTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('The Jungle Book',
            style: Styles.textStyle30
                .copyWith(fontFamily: kGTSectraFineRegular)),
        const SizedBox(
          height: 6,
        ),
        Text('Rudyard Kipling',
            style: Styles.textStyle18.copyWith(color: kTextLowOpacityColor)),
        const SizedBox(
          height: 16,
        ),
        const BookRating(),
      ],
    );
  }
}
