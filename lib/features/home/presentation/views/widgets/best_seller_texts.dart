import 'package:bookly/constants.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerTexts extends StatelessWidget {
  const BestSellerTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Text('Harry Potter and the Goblet of Fire',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20
                    .copyWith(fontFamily: kGTSectraFineRegular)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Text(
              'J.K. Rowling',
              style: Styles.textStyle14,
            ),
          ),
          Row(
            children: [
              Text(
                '19.99 €',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 36.3,
              ),
              const BookRating(),
            ],
          )
        ],
      ),
    );
  }
}

