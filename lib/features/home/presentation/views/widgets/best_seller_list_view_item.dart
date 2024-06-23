import 'package:bookly/core/util/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            SizedBox(
              height: 125,
              child: AspectRatio(
                aspectRatio: 4.5 / 7,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                            image: AssetImage(AssetImages.testImage),
                            fit: BoxFit.fill))),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const BestSellerTexts()
          ],
        ),
      ),
    );
  }
}
