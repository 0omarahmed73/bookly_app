import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const FeaturedListViewItem(),
      ),
    );
  }
}