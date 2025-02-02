import 'package:ecom_provider/constants.dart';
import 'package:ecom_provider/features/detail/presentation/widgets/description.dart';
import 'package:ecom_provider/features/detail/presentation/widgets/details_custom_app_bar.dart';
import 'package:ecom_provider/features/detail/presentation/widgets/image_slider_widget.dart';
import 'package:ecom_provider/features/detail/presentation/widgets/items_details.dart';
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
  int currentColor = 1;
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
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    width: currentImage == index ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentImage == index
                          ? Colors.black
                          : Colors.transparent,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemsDetails(
                      productModel: widget.productModel,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Color',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: List.generate(
                        widget.productModel.colors.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currentColor = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(
                              milliseconds: 300,
                            ),
                            width: 35,
                            height: 35,
                            padding: currentColor == index
                                ? const EdgeInsets.all(2)
                                : null,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColor == index
                                  ? Colors.white
                                  : widget.productModel.colors[index],
                              border: currentColor == index
                                  ? Border.all(
                                      color: widget.productModel.colors[index])
                                  : null,
                            ),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: widget.productModel.colors[index],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Description(
                      description: widget.productModel.description,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
