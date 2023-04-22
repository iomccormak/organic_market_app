import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return SingleChildScrollView(
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
                  height: 58.h,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const ProfileMainInfo(),
                SizedBox(
                  height: 18.h,
                ),
                const ProfilePointsInfo(),
                SizedBox(
                  height: 31.h,
                ),
                const ProfileTextButton(
                  text: AppStrings.personalInfo,
                ),
                SizedBox(
                  height: 31.h,
                ),
                const ProfileTextButton(
                  text: AppStrings.myOrders,
                ),
                SizedBox(
                  height: 31.h,
                ),
                const ProfileTextButton(
                  text: AppStrings.myAddreses,
                ),
                SizedBox(
                  height: 31.h,
                ),
                const ProfileTextButton(
                  text: AppStrings.paymentWays,
                ),
                SizedBox(
                  height: 31.h,
                ),
                const ProfileTextButton(
                  text: AppStrings.writeUs,
                ),
                SizedBox(
                  height: 110.h,
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height - 90.h,
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
            )
          ],
        ),
      ),
    );
  }
}
