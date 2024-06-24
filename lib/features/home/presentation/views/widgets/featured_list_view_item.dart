import 'package:bookly/core/util/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
        aspectRatio: 0.67,
        child: Container(
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  image: AssetImage(AssetImages.testImage), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
