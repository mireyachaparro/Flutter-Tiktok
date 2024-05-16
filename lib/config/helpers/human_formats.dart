import 'package:intl/intl.dart';

class HumanFormats{
  static String humanReadbleNumber(double number){ // si uso static, puedo hacer lo de abajo, puedo acceder a los metodos que tiene 
  final formatterNumber = NumberFormat.compactCurrency(
    decimalDigits: 0,
    symbol: '',
  ).format(number);

    return formatterNumber;
  }
}