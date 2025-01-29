import 'package:ecom_provider/common/custom_app_bar.dart';
import 'package:ecom_provider/constants.dart';
import 'package:ecom_provider/features/home/model/product_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final ProductModel productModel;
  const DetailScreen({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kContentColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              icon: Icons.arrow_back,
              actionIconOne: Icons.share,
              actionIconTwo: Icons.favorite,
            ),
          ],
        ),
      ),
    );
  }
}
