import 'package:bookly/core/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                        image: AssetImage(AssetImages.testImage) , fit: BoxFit.fill))),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Harry Potter'),
            Text('and the Goblet of Fire'),
            Text('J.K. Rowling'),
            Row(
              children: [
                Text('19.99 €'),
              ],
            )
          ],
        )
      ],
    );
  }
}
