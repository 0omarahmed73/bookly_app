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
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: kPadding,
              child: CustomAppBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: FeaturedBooksListView(height: MediaQuery.of(context).size.height * 0.32,),
            ),
            const SizedBox(
              height: 36,
            ),
            const Padding(
              padding: kPadding,
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
          ],
        ),
      ),
      const SliverFillRemaining(
        child: Padding(
          padding: kPadding,
          child: BestSellerListView(),
        ),
      ),
    ]);
  }
}
