import 'package:firebase_database/firebase_database.dart';
import 'package:ss_menu/models/customer_order.dart';
import 'package:ss_menu/util.dart';

/// The central service for everything Firebase.
///
/// Provides static methods to manage tokens and customer orders.
///
/// TODO: It's probably better to create a library of functions
/// than a class with only static methods (as per Effective Dart).
class FirebaseService {
  /// Private central reference to our realtime database instance.
  static final _databaseRef = FirebaseDatabase.instance.reference();

  /// Returns the next available token for the given date.
  /// Should ideally be used with [setTokenForDate] to update
  /// token in database after a successful operation.
  static Future<int> getNextTokenForDate(DateTime date) async {
    try {
      DataSnapshot snapshot = await _databaseRef
          .child('tokens/${Util.getYYYYMMDDDate(date)}')
          .once();
      int token = snapshot.value ?? 0;
      token++;
      return token;
    } catch (e) {
      return 0;
    }
  }

  /// Updates current token in database with the given value for the given date.
  static Future<bool> setTokenForDate(DateTime date, int token) async {
    try {
      await _databaseRef
          .child('tokens/${Util.getYYYYMMDDDate(date)}')
          .set(token);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Adds the given customer order to open orders node in database.
  ///
  /// Note that only once an order is marked as completed or cancelled
  /// it is moved to the corresponding date node.
  /// That's the responsibility of Orders app that displays a realtime
  /// list of all open orders.
  ///
  /// Returns true if successful, false otherwise.
  static Future<bool> postCustomerOrder(CustomerOrder order) async {
    try {
      await _databaseRef
          .child('open-orders/${order.orderId}')
          .set(order.toMap());
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
