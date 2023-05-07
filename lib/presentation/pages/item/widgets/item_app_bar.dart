import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/presentation/common_widgets/loading_animation.dart';
import 'package:organic_market_app/presentation/pages/favorites/bloc/favorites_bloc.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ItemBar extends StatelessWidget {
  const ItemBar({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        BlocBuilder<FavoritesBloc, FavoritesState>(
          builder: (context, state) {
            if (state is FavoritesLoad) {
              return GestureDetector(
                onTap: () {
                  if (product.isFavorite == false) {
                    context
                        .read<FavoritesBloc>()
                        .add(FavoritesProductAdded(product));
                  } else {
                    context
                        .read<FavoritesBloc>()
                        .add(FavoritesProductRemoved(product));
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
                            AppColors.red,
                            BlendMode.srcIn,
                          ),
                        ),
                ),
              );
            } else if (state is FavoritesError) {
              return const Text('Error');
            }
            return const LoadingAnimation();
          },
        ),
      ],
      title: Text(
        AppStrings.item,
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
    );
  }
}
