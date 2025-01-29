import 'package:ecom_provider/constants.dart';
import 'package:ecom_provider/features/detail/presentation/widgets/details_custom_app_bar.dart';
import 'package:ecom_provider/features/detail/presentation/widgets/image_slider_widget.dart';
import 'package:ecom_provider/features/home/model/product_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final ProductModel productModel;
  const DetailScreen({
    super.key,
    required this.productModel,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kContentColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const DetailsCustomAppBar(),
              //Image Slider
              ImageSliderWidget(
                image: widget.productModel.img,
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
