import 'package:aklty/generated/assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    super.key,
  });

  static final List<String> images = [
    Assets.imagesOnboarding1,
    Assets.imagesOnboarding2,
    Assets.imagesOnboarding3,
    Assets.imagesOnboarding4,
    Assets.imagesOnboarding5,
  ];


  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 900),
        autoPlayCurve: Curves.easeInOut,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
      items: images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Image.asset(
                i,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}