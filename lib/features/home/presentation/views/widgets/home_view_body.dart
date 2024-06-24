import 'package:bookly/constants.dart';
import 'package:bookly/core/util/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: kPadding,
              child: CustomAppBar(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: FeaturedBooksListView(),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: kPadding,
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(
              height: 26,
            ),
          ],
        ),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: kPadding,
          child: BestSellerListView(),
        ),
      )
    ]);
  }
}
