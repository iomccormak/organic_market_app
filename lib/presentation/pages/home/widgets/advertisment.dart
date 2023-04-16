import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';

class Advertisment extends StatelessWidget {
  const Advertisment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 28.w, // 20
      ),
      child: SizedBox(
        height: 208.h,
        width: 335.w,
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: TempRepository.mainAdvertisments.length,
          itemBuilder: (BuildContext context, int index) => Row(
            children: [
              Transform.scale(
                scale: 1.05,
                child: Image.asset(
                  TempRepository.mainAdvertisments[index],
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
