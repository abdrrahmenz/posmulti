import 'package:intl/intl.dart';

extension IntegerExt on int {
  String get currencyFormatRp => NumberFormat.currency(
        locale: 'id',
        symbol: 'Rp. ',
        decimalDigits: 0,
      ).format(this);

  String get currencyFormatRpV2 => NumberFormat.currency(
        locale: 'id',
        symbol: '',
        decimalDigits: 0,
      ).format(this);
}

extension DoubleExt on double {
  String get currencyFormatRp => NumberFormat.currency(
        locale: 'id',
        symbol: 'Rp ',
        decimalDigits: 0,
      ).format(this);

  String get currencyFormatRpV2 => NumberFormat.currency(
        locale: 'id',
        symbol: '',
        decimalDigits: 0,
      ).format(this);
}
