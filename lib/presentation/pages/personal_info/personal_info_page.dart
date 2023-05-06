import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/app_bar_widget.dart';
import 'package:organic_market_app/presentation/common_widgets/button_under_nav_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/main_green_button.dart';
import 'package:organic_market_app/presentation/pages/personal_info/bloc/personal_info_bloc.dart';
import 'package:organic_market_app/presentation/pages/personal_info/widgets/date_input.dart';
import 'package:organic_market_app/presentation/pages/personal_info/widgets/personal_info_input.dart';
import 'package:organic_market_app/presentation/pages/personal_info/widgets/phone_input.dart';
import 'package:organic_market_app/utils/app_strings.dart';
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

    return Scaffold(
      appBar: PreferredSize(
        child: AppBarWidget(
          label: AppStrings.personalInfo,
          back: true,
        ),
        preferredSize: Size.fromHeight(44.h),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
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
              ButtonUnderNavBar(
                button: GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      context.read<PersonalInfoBloc>().add(
                            PersonalInfoSaved(
                              nameController.text,
                              surnameController.text,
                              phoneController.text,
                              dateController.text,
                              emailController.text,
                            ),
                          );
                      context.router.pop();
                    }
                  },
                  child: const MainGreenButton(
                    label: AppStrings.save,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
