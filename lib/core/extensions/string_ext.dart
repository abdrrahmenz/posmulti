import 'package:intl/intl.dart';

extension StringExt on String {
  int get toIntegerFromText {
    final cleanedText = replaceAll(RegExp(r'[^0-9]'), '');
    final parsedValue = int.tryParse(cleanedText) ?? 0;
    return parsedValue;
  }

  //transactionTime: DateFormat('yyyy-MM-ddTHH:mm:ss').format(DateTime.now())

  String get toFormattedTime {
    final dateTime = DateTime.parse(this);
    return DateFormat('dd-MM HH:mm').format(dateTime);
  }

  //currencyFormatRp
  String get currencyFormatRp {
    final parsedValue = int.tryParse(this) ?? 0;
    return NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp. ',
      decimalDigits: 0,
    ).format(parsedValue);
  }

  String get currencyFormatRpV2 {
    final parsedValue = int.tryParse(this) ?? 0;
    return NumberFormat.currency(
      locale: 'id',
      symbol: '',
      decimalDigits: 0,
    ).format(parsedValue);
  }

  //20000.00 -> Rp 20.000
  String get currencyFormatRpV3 {
    final parsedValue = double.tryParse(this) ?? 0;
    return NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp. ',
      decimalDigits: 0,
    ).format(parsedValue);
  }

  //stringToDouble
  double get toDouble {
    return double.tryParse(this) ?? 0.0;
  }

  //"2025-02-04T15:27:45.000000Z" to 04 Februari 2025, 03:27
  String get toFormattedDateOnly {
    final dateTime = DateTime.parse(this);
    return DateFormat('dd MMMM yyyy').format(dateTime);
  }

  //2025-02-04T15:27:45.000000Z to 15:27
  String get toFormattedTimeOnly {
    final dateTime = DateTime.parse(this);
    return DateFormat('HH:mm').format(dateTime);
  }
}
