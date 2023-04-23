extension TextFormatter on String {
  String changeCase() {
    String result = '';
    String lastNum = this[length - 1];
    switch (lastNum) {
      case '1':
        result = '$this товар';
        break;
      case '2':
        result = '$this товара';
        break;
      case '3':
        result = '$this товара';
        break;
      case '4':
        result = '$this товара';
        break;
      case '5':
        result = '$this товаров';
        break;
      case '6':
        result = '$this товаров';
        break;
      case '7':
        result = '$this товаров';
        break;
      case '8':
        result = '$this товаров';
        break;
      case '9':
        result = '$this товаров';
        break;
      case '0':
        result = '$this товаров';
        break;
    }
    return result;
  }
}
