import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerTexts extends StatelessWidget {
  const BestSellerTexts({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Text(book.volumeInfo.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20
                    .copyWith(fontFamily: kGTSectraFineRegular)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Text(
              book.volumeInfo.authors?[0] ?? 'No Author',
              style: Styles.textStyle14,
            ),
          ),
          Row(
            children: [
              Text(
                'Free',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 36.3,
              ),
              BookRating(
                rating: book.volumeInfo.averageRating ?? 5,
                count: book.volumeInfo.ratingsCount ?? 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
