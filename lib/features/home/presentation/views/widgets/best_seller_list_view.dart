import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) =>
                  BookListViewItem(book: state.books[index]),
              itemCount: state.books.length,
            ),
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
