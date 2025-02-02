import 'package:ecom_provider/constants.dart';
import 'package:ecom_provider/features/home/model/product_model.dart';
import 'package:flutter/material.dart';

class ItemsDetails extends StatelessWidget {
  final ProductModel productModel;
  const ItemsDetails({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productModel.title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${productModel.price}',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kPrimaryColor,
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            productModel.rate.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      productModel.review,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Writter: ',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: productModel.seller,
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
