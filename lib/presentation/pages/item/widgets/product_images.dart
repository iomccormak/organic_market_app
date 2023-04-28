import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key, required this.product});

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.w,
      height: 250.h,
      child: Stack(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 250.h,
              viewportFraction: 1,
              onPageChanged: (index, reason) => setState(
                () => currentIndex = index,
              ),
            ),
            itemCount: 3,
            itemBuilder: (context, index, realIndex) => Image.network(
              widget.product.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 234.h,
              left: 150.w,
              right: 150.w,
            ),
            child: Container(
              width: 100.w,
              height: 12.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.r),
                ),
                color: AppColors.underDots,
              ),
              alignment: Alignment.center,
              child: AnimatedSmoothIndicator(
                activeIndex: currentIndex,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: AppColors.white,
                  dotColor: AppColors.white,
                  dotWidth: 5.w,
                  dotHeight: 5.h,
                  expansionFactor: 6,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
