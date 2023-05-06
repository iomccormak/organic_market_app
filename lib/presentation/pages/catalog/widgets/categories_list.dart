import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/mock_repository.dart';
import 'package:organic_market_app/presentation/pages/catalog/widgets/category_big_widget.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460.h,
      child: GridView.builder(
        padding: EdgeInsets.only(
          top: 10.h,
        ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250.w,
          mainAxisExtent: 100.h,
          mainAxisSpacing: 20,
        ),
        itemCount: MockRepository.categories.length,
        itemBuilder: (context, index) {
          return CategoryBigWidget(
            category: MockRepository.categories[index],
          );
        },
      ),
    );
  }
}
