abstract class Validation {
  static String? nameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите имя';
    }
    if (!RegExp(r'^[а-яА-ЯёЁa-zA-Z]{4,}$').hasMatch(value)) {
      return "Имя может содержать только буквы. Минимум 4 символа";
    }
    return null;
  }

  static String? surnameValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите фамилию';
    }
    if (!RegExp(r'^[а-яА-ЯёЁa-zA-Z]{4,}$').hasMatch(value)) {
      return "Фамилия может содержать только буквы. Минимум 4 символа";
    }
    return null;
  }

  static String? phoneValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите номер телефона';
    }
    if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value)) {
      return "Некорректный номер телефона";
    }
    return null;
  }

  static String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите почту';
    }
    if (!RegExp(r'^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$')
        .hasMatch(value)) {
      return "Некорректный адрес e-mail почты";
    }
    return null;
  }
}
