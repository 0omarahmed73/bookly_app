import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/widgets/custom_cached_image.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_texts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, this.book});
  final BookModel? book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.kBookDetailsView , extra: book);
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              SizedBox(
                height: 125,
                child: CustomCachedImage(
                  aspectRation: 4.5 / 7,
                  imageUrl: book!.volumeInfo.imageLinks!.thumbnail as String,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              BestSellerTexts(
                book: book!,
              )
            ],
          ),
        ),
      ),
    );
  }
}
