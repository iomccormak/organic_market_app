import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/presentation/pages/cart/bloc/cart_bloc.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoad) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
              color: AppColors.white,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 272.w,
                    top: 5.h,
                  ),
                  child: state.cart.products.isNotEmpty
                      ? Container(
                          decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          width: 13.w,
                          height: 13.h,
                          alignment: Alignment.center,
                          child: Text(
                            state.cart.getAmount().toString(),
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 10.sp,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
                BottomNavigationBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  type: BottomNavigationBarType.fixed,
                  showUnselectedLabels: true,
                  selectedLabelStyle: AppTextStyles.bottomBarTextStyle.copyWith(
                    color: AppColors.mainGreen,
                  ),
                  unselectedLabelStyle: AppTextStyles.bottomBarTextStyle,
                  selectedItemColor: AppColors.mainGreen,
                  currentIndex: tabsRouter.activeIndex,
                  onTap: tabsRouter.setActiveIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(AppIcons.mainSmall),
                      activeIcon: SvgPicture.asset(
                        AppIcons.mainSmall,
                        colorFilter: const ColorFilter.mode(
                          Color.fromARGB(255, 209, 254, 83),
                          BlendMode.modulate,
                        ),
                      ),
                      label: AppStrings.main,
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(AppIcons.catalogue),
                      activeIcon: SvgPicture.asset(
                        AppIcons.catalogue,
                        colorFilter: const ColorFilter.mode(
                          AppColors.mainGreen,
                          BlendMode.srcIn,
                        ),
                      ),
                      label: AppStrings.catalog,
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(AppIcons.search),
                      activeIcon: SvgPicture.asset(
                        AppIcons.search,
                        colorFilter: const ColorFilter.mode(
                          AppColors.mainGreen,
                          BlendMode.srcIn,
                        ),
                      ),
                      label: AppStrings.search,
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(AppIcons.customCart),
                      activeIcon: SvgPicture.asset(
                        AppIcons.customCart,
                        colorFilter: const ColorFilter.mode(
                          AppColors.mainGreen,
                          BlendMode.srcIn,
                        ),
                      ),
                      label: AppStrings.cart,
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(AppIcons.profile),
                      activeIcon: SvgPicture.asset(
                        AppIcons.profile,
                        colorFilter: const ColorFilter.mode(
                          AppColors.mainGreen,
                          BlendMode.srcIn,
                        ),
                      ),
                      label: AppStrings.profile,
                    ),
                  ],
                ),
              ],
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
