import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oktoast/oktoast.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/presentation/pages/favorites/bloc/favorites_bloc.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class ItemBar extends StatelessWidget {
  const ItemBar({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: AppBar(
        shadowColor: AppColors.shadowColor,
        elevation: 15,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        backgroundColor: AppColors.white,
        centerTitle: true,
        actions: [
          SvgPicture.asset(AppIcons.share),
          SizedBox(
            width: 17.w,
          ),
          GestureDetector(
            onTap: () {
              if (product.isFavorite == false) {
                context
                    .read<FavoritesBloc>()
                    .add(FavoritesProductAdded(product));

                showToastWidget(
                  Container(
                    width: 200.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Предмет добавлен в избранное',
                      style: AppTextStyles.bottomBarTextStyle.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  position: const ToastPosition(align: Alignment.center),
                );
              } else {
                context
                    .read<FavoritesBloc>()
                    .add(FavoritesProductRemoved(product));
                showToastWidget(
                  Container(
                    width: 200.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Предмет удален из избранного',
                      style: AppTextStyles.bottomBarTextStyle.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  position: const ToastPosition(align: Alignment.center),
                );
              }
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: 20.w,
              ),
              child: product.isFavorite == false
                  ? SvgPicture.asset(AppIcons.like)
                  : SvgPicture.asset(
                      AppIcons.like,
                      colorFilter: const ColorFilter.mode(
                        Color.fromARGB(255, 255, 0, 0),
                        BlendMode.srcIn,
                      ),
                    ),
            ),
          ),
        ],
        title: Text(
          'Продукт',
          style: AppTextStyles.appBarTextStyle,
        ),
        leading: GestureDetector(
          onTap: () {
            context.router.pop();
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: 14.w,
            ),
            child: Transform.scale(
              scale: 0.4,
              child: SvgPicture.asset(AppIcons.back),
            ),
          ),
        ),
      ),
    );
  }
}
