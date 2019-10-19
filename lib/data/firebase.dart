import 'package:firebase_database/firebase_database.dart';
import 'package:ss_menu/models/customer_order.dart';
import 'package:ss_menu/util.dart';

class FirebaseService {
  static final _databaseRef = FirebaseDatabase.instance.reference();

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

  static Future<bool> postCustomerOrder(CustomerOrder order) async {
    try {
      await _databaseRef.child('open-orders/${order.orderId}').set(order);
      return true;
    } catch (e) {
      return false;
    }
  }
}
