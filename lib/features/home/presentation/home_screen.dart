import 'package:ecom_provider/common/custom_app_bar.dart';
import 'package:ecom_provider/features/home/presentation/widgets/category_widget.dart';
import 'package:ecom_provider/features/home/presentation/widgets/image_slider.dart';
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
              const CustomAppBar(),
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
              const CategoryWidget()
            ],
          ),
        ),
      ),
    );
  }
}
