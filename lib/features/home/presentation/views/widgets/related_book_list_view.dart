import 'package:bookly/core/widgets/custom_cached_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class RelatedBookListView extends StatelessWidget {
  const RelatedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10),
          child: CustomCachedImage(
            imageUrl:
                'https://archive.org/download/placeholder-image/placeholder-image.jpg',
            aspectRation: 0.67,
          ),
        ),
      ),
    );
  }
}
