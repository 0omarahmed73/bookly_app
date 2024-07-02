import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_cached_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2),
          child: const CustomCachedImage(
            imageUrl:
                'https://archive.org/download/placeholder-image/placeholder-image.jpg',
            aspectRation: 0.67,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text('The Jungle Book',
            style:
                Styles.textStyle30.copyWith(fontFamily: kGTSectraFineRegular)),
        const SizedBox(
          height: 6,
        ),
        Text('Rudyard Kipling',
            style: Styles.textStyle18.copyWith(color: kTextLowOpacityColor)),
        const SizedBox(
          height: 16,
        ),
        const BookRating(),
        const SizedBox(
          height: 36,
        ),
        const BooksAction(),
      ],
    );
  }
}
