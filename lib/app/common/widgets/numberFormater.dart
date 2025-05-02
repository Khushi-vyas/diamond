import 'package:intl/intl.dart';

NumberFormat formatter = NumberFormat.decimalPatternDigits(
  locale: 'en_in',
  decimalDigits: 2,
);

moneyFormatter(dynamic number) {
  return formatter.format(number);
}
