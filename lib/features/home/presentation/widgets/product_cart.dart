import 'package:ecom_provider/constants.dart';
import 'package:ecom_provider/features/detail/presentation/detail_screen.dart';
import 'package:ecom_provider/features/favorite/data/favorite_provider.dart';
import 'package:ecom_provider/features/home/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  final ProductModel productModel;
  const ProductCart({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              productModel: productModel,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kContentColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Hero(
                    tag: productModel.img,
                    child: Image.asset(
                      width: 150,
                      height: 150,
                      productModel.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    productModel.title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${productModel.price}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: List.generate(
                          productModel.colors.length,
                          (index) => Container(
                            width: 18,
                            height: 18,
                            margin: const EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              color: productModel.colors[index],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    provider.toggleFavorite(productModel);
                  },
                  child: Icon(
                    provider.isExist(productModel)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
