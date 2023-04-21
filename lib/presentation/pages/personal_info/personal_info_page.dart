import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/pages/personal_info/widgets/date_input.dart';
import 'package:organic_market_app/presentation/pages/personal_info/widgets/personal_info_input.dart';
import 'package:organic_market_app/presentation/pages/personal_info/widgets/phone_input.dart';
import 'package:organic_market_app/presentation/pages/personal_info/widgets/save_button.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';
import 'package:organic_market_app/utils/validation.dart';

class PersonalInfoPage extends StatelessWidget {
  PersonalInfoPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController surnameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController dateController = TextEditingController();

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  PersonalInfoInput(
                    fieldName: AppStrings.name,
                    controller: nameController,
                    validator: Validation.nameValidation,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  PersonalInfoInput(
                    fieldName: AppStrings.surname,
                    controller: surnameController,
                    validator: Validation.surnameValidation,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  PhoneInput(
                    fieldName: AppStrings.phone,
                    controller: phoneController,
                    validator: Validation.phoneValidation,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  DateInput(
                    fieldName: AppStrings.dateOfBirth,
                    controller: dateController,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  PersonalInfoInput(
                    fieldName: AppStrings.email,
                    controller: emailController,
                    validator: Validation.emailValidation,
                  ),
                ],
              ),
            ),
            SaveButton(
              formKey: _formKey,
            ),
          ],
        ),
      ),
    );
  }
}
