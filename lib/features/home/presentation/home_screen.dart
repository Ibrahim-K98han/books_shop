import 'package:ecom_provider/common/custom_app_bar.dart';
import 'package:ecom_provider/features/home/model/product_model.dart';
import 'package:ecom_provider/features/home/presentation/widgets/category_widget.dart';
import 'package:ecom_provider/features/home/presentation/widgets/image_slider.dart';
import 'package:ecom_provider/features/home/presentation/widgets/product_cart.dart';
import 'package:ecom_provider/features/home/presentation/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              //Custom App Bar
              CustomAppBar(
                icon: Icons.menu,
                actionIconOne: Icons.notifications,
              ),
              const SizedBox(height: 20),
              //Search Bar
              const SearchBarWidget(),
              const SizedBox(height: 20),
              //Image Slider
              ImageSlider(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              //Category
              const CategoryWidget(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special For You',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.60,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCart(
                    productModel: products[index],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
