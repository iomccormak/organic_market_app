import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/presentation/common_widgets/app_bar_widget.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/pages/personal_info/bloc/personal_info_bloc.dart';
import 'package:organic_market_app/presentation/pages/profile/widgets/profile_app_bar.dart';
import 'package:organic_market_app/presentation/pages/profile/widgets/profile_main_info.dart';
import 'package:organic_market_app/presentation/pages/profile/widgets/profile_points_info.dart';
import 'package:organic_market_app/presentation/pages/profile/widgets/profile_text_button.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBarWidget(
          label: AppStrings.profile,
        ),
        preferredSize: Size.fromHeight(44.h),
      ),
      body: BlocBuilder<PersonalInfoBloc, PersonalInfoState>(
        builder: (context, state) {
          if (state is PersonalInfoInitial) {
            return const CircularProgressIndicator();
          } else if (state is PersonalInfoLoad) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 32.h,
                            ),
                            ProfileMainInfo(
                                name: state.profile.name,
                                phone: state.profile.phone),
                            SizedBox(
                              height: 18.h,
                            ),
                            const ProfilePointsInfo(),
                            SizedBox(
                              height: 31.h,
                            ),
                            GestureDetector(
                              onTap: () =>
                                  context.router.navigate(PersonalInfoRoute()),
                              child: const ProfileTextButton(
                                text: AppStrings.personalInfo,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            GestureDetector(
                              onTap: () => context.router
                                  .navigate(const MyOrdersRoute()),
                              child: const ProfileTextButton(
                                text: AppStrings.myOrders,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            const ProfileTextButton(
                              text: AppStrings.myAddreses,
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            const ProfileTextButton(
                              text: AppStrings.paymentWays,
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            const ProfileTextButton(
                              text: AppStrings.writeUs,
                            ),
                            SizedBox(
                              height: 110.h,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () => context
                              .read<PersonalInfoBloc>()
                              .add(PersonalInfoInitialized()),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 640.h,
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(AppIcons.quit),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    AppStrings.quit,
                                    style: AppTextStyles.phoneTextStyle,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const NavBarShadow(),
              ],
            );
          }
          return const Text('Error!');
        },
      ),
    );
  }
}
