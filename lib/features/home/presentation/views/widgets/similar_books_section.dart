import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_texts.dart';
import 'package:bookly/features/home/presentation/views/widgets/related_book_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          BookDetailsSection(
            bookModel: bookModel,
          ),
          const Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          const RelatedBookListView(),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
