import 'package:amina_enterprises/constraints/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSliderWidget extends StatelessWidget {
  final List<String> items;
  int _currentPage = 0;
  HomeSliderWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CarouselSlider(
        items: items.map((image) {
          return Builder(builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            );
          });
        }).toList(),
        options: CarouselOptions(
            onPageChanged: (index, reason) {
              _currentPage = index;
              // update();
            },
            initialPage: 0,
            autoPlay: true),
      ),
      Positioned(
        bottom: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: items.map((item) {
            int index = items.indexOf(item);
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index
                    ? redColor
                    : redColor.withOpacity(0.1),
              ),
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
