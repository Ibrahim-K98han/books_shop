import 'package:ecom_provider/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData icon;
  final IconData actionIconOne;
  final IconData? actionIconTwo;

  CustomAppBar({
    super.key,
    required this.icon,
    required this.actionIconOne,
    this.actionIconTwo,
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
          icon: Icon(
            icon,
            size: 30,
          ),
        ),
        Row(
          children: [
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: kContentColor,
                padding: const EdgeInsets.all(10),
              ),
              onPressed: () {},
              icon: Icon(
                actionIconOne,
                size: 30,
              ),
            ),
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: kContentColor,
                padding: const EdgeInsets.all(10),
              ),
              onPressed: () {},
              icon: Icon(
                actionIconTwo,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
