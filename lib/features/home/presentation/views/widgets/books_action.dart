import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/open_url.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
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
          onPressed: () async {
            await launchURL('bookModel.volumeInfo.previewLink', context);
          },
          backgroundColor: kButtonColor,
          borderRadius: const BorderRadius.only(
              bottomRight: kBorderRadius, topRight: kBorderRadius),
          textStyle: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          text: getText(bookModel),
        )
      ]),
    );
  }

  String getText(BookModel book) {
    if (book.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Free Preview';
    }
  }
}
