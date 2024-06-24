import 'package:bookly/constants.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const CustomBookDetailsAppBar(),
          const SizedBox(
            height: 33,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
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
          const BookRating()
        ],
      ),
    );
  }
}
