import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_cached_image.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2),
          child: CustomCachedImage(
            imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail!,
            aspectRation: 0.67,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(bookModel.volumeInfo.title!,
            textAlign: TextAlign.center,
            style:
                Styles.textStyle30.copyWith(fontFamily: kGTSectraFineRegular)),
        const SizedBox(
          height: 6,
        ),
        Text(bookModel.volumeInfo.authors?[0] ?? 'No Author',
            style: Styles.textStyle18.copyWith(color: kTextLowOpacityColor)),
        const SizedBox(
          height: 16,
        ),
        BookRating(
          rating: bookModel.volumeInfo.averageRating ?? 5,
          count: bookModel.volumeInfo.ratingsCount ?? 100,
        ),
        const SizedBox(
          height: 36,
        ),
        BooksAction(bookModel: bookModel,),
      ],
    );
  }
}
