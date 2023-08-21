import 'package:intl/intl.dart';

class TimeUtils {
  static String formatDateTime(DateTime? dateTime, {showDay = false}) {
    DateFormat dateFormat = DateFormat.yMMMd('en_US');
    DateFormat format = DateFormat("EE dd MMM, yyyy");
    if (showDay) {
      return format.format(dateTime ?? DateTime.now());
    }
    return dateFormat.format(dateTime ?? DateTime.now());
  }

  static String formatHourDateTime(DateTime? dateTime) {
    DateFormat dateFormat = DateFormat.jm("en_US");
    return dateFormat.format(dateTime ?? DateTime.now());
  }
}
