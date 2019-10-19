import 'package:intl/intl.dart';

class Util {
  static String getYYYYMMDDDate(DateTime date) {
    return DateFormat('yyyy/MM/dd').format(date);
  }
}
