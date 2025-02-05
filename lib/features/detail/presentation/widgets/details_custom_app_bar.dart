import 'package:ecom_provider/features/favorite/data/favorite_provider.dart';
import 'package:ecom_provider/features/home/model/product_model.dart';
import 'package:flutter/material.dart';

class DetailsCustomAppBar extends StatelessWidget {
  final ProductModel productModel;
  const DetailsCustomAppBar({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
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
                onPressed: () {
                  provider.toggleFavorite(productModel);
                },
                icon: Icon(
                  provider.isExist(productModel)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
