import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class Util {
  static String getYYYYMMDDDate(DateTime date) {
    return DateFormat('yyyy/MM/dd').format(date);
  }

  static String newUUID() {
    return Uuid().v1();
  }
}
