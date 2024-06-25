import 'package:bookly/core/util/app_router.dart';
import 'package:bookly/core/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 5, bottom: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AssetImages.logo,
              height: 16.1,
            ),
            IconButton(
                onPressed: () {
                  context.push(AppRouter.kSearchView);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 20,
                )),
          ],
        ),
      ),
    );
  }
}
