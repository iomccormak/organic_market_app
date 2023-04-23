import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String toRusFormat() {
    String result = "$day ";
    switch (month) {
      case 1:
        result += "января $year";
        break;
      case 2:
        result += "февраля $year";
        break;
      case 3:
        result += "марта $year";
        break;
      case 4:
        result += "апреля $year";
        break;
      case 5:
        result += "мая $year";
        break;
      case 6:
        result += "июня $year";
        break;
      case 7:
        result += "июля $year";
        break;
      case 8:
        result += "августа $year";
        break;
      case 9:
        result += "сентября $year";
        break;
      case 10:
        result += "октября $year";
        break;
      case 11:
        result += "ноября $year";
        break;
      case 12:
        result += "декабря $year";
        break;
    }
    return result;
  }
}
