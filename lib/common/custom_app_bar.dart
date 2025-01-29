import 'package:ecom_provider/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kContentColor,
            padding: const EdgeInsets.all(10),
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kContentColor,
            padding: const EdgeInsets.all(10),
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            size: 30,
          ),
        ),
      ],
    );
  }
}