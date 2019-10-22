import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

/// A collection of reusable utility functions.
///
/// TODO: It's probably better to create a library of functions
/// than a class with only static methods (as per Effective Dart).
class Util {
  /// Returns a "YEAR/MONTH/DATE" string for the given date.
  /// For example, "2019/10/22".
  ///
  /// Useful for creating Firebase database node path fragments.
  static String getYYYYMMDDDate(DateTime date) {
    return DateFormat('yyyy/MM/dd').format(date);
  }

  /// Returns a unique UUID string.
  static String newUUID() {
    return Uuid().v1();
  }
}
