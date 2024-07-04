import 'package:bookly/core/widgets/custom_cached_image.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelatedBookListView extends StatelessWidget {
  const RelatedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.erMessage);
        }
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: 10),
                child: CustomCachedImage(
                  imageUrl:
                      state.books[index].volumeInfo.imageLinks!.thumbnail!,
                  aspectRation: 0.67,
                ),
              ),
            ),
          );
        }
        return const CustomLoadingIndicator();
      },
    );
  }
}
