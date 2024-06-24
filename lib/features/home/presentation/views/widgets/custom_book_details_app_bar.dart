import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.close,
              size: 32,
            ),
            onPressed: () {
              context.pop();
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 32,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
