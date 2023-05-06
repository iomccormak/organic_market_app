import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/mock_repository.dart';

class Advertisment extends StatefulWidget {
  const Advertisment({super.key});

  @override
  State<Advertisment> createState() => _AdvertismentState();
}

class _AdvertismentState extends State<Advertisment> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 208.h,
          viewportFraction: 0.77.w,
          onPageChanged: (index, reason) => setState(
            () => currentIndex = index,
          ),
        ),
        itemCount: MockRepository.mainAdvertisments.length,
        itemBuilder: (context, index, realIndex) => Image.asset(
          MockRepository.mainAdvertisments[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
