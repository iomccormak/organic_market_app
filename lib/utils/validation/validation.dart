import 'package:organic_market_app/utils/app_constants/app_strings.dart';

abstract class Validation {
  static String? nameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.validNameEnter;
    }
    if (!RegExp(r'^[а-яА-ЯёЁa-zA-Z]{3,}$').hasMatch(value)) {
      return AppStrings.validNameError;
    }
    return null;
  }

  static String? surnameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.validSurnameEnter;
    }
    if (!RegExp(r'^[а-яА-ЯёЁa-zA-Z]{4,}$').hasMatch(value)) {
      return AppStrings.validSurnameError;
    }
    return null;
  }

  static String? phoneValidation(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.validPhoneEnter;
    }
    if (!RegExp(r'(^(?:[+0]7)?[0-9]{10,12}$)').hasMatch(value)) {
      return AppStrings.validPhoneError;
    }
    return null;
  }

  static String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.validEmailEnter;
    }
    if (!RegExp(r'^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$')
        .hasMatch(value)) {
      return AppStrings.validEmailError;
    }
    return null;
  }

  static String? codeValidation(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.validCodeEnter;
    }
    return null;
  }
}
