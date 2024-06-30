import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ScaledChild extends StatelessWidget {
  const ScaledChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetImages.logo),
        const SizedBox(
          height: 6,
        ),
        const Text(
          'Read Free Books',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 26),
        ),
      ],
    );
  }
}
