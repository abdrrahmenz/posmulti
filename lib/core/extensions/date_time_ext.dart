extension DateTimeExt on DateTime {
  String toFormattedTime() {
    final List<String> monthNames = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'August',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];

    final int hour12 = hour % 12;
    final String monthName = monthNames[month - 1];

    return '$day $monthName $year, ${hour12.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  //to 23:40
  String toFormattedTimeOnly() {
    return '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  //to 22 Januari 2025
  String toFormattedDateOnly() {
    final List<String> monthNames = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'August',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];

    final String monthName = monthNames[month - 1];

    return '$day $monthName $year';
  }

  //to local time
  DateTime toLocalTime() {
    return toLocal();
  }

  //to 22 Januari 2025 23:40
  String toFormattedDateTime() {
    return '${toFormattedDateOnly()} ${toFormattedTimeOnly()}';
  }

}


