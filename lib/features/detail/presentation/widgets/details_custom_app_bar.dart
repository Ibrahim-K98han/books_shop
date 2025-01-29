import 'package:flutter/material.dart';

class DetailsCustomAppBar extends StatelessWidget {
  const DetailsCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 25,
            ),
          ),
          Row(
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(10),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  size: 25,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(10),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  size: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
