import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildBorderOutline(color: Colors.white60),
          focusedBorder: buildBorderOutline(color: Colors.white),
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
                color: Colors.white60,
              ))),
    );
  }

  OutlineInputBorder buildBorderOutline({required Color color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color));
  }
}
